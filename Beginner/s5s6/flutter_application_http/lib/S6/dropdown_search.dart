import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter_application_http/models/city.dart';
import 'package:flutter_application_http/models/province.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class DropdownSearchPackages extends StatelessWidget {
  final String apiKey =
      "61af6dee09c75c6ef94bd99ea574ad1feca78d334052164d98baaea04fc1f198";
  String? idProv;

  DropdownSearchPackages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wilayah Indonesia"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          DropdownSearch<Province>(
            popupProps: const PopupProps.menu(
              showSearchBox: true,
              searchFieldProps: TextFieldProps(),
            ),
            onChanged: (value) => idProv = value?.id,
            dropdownBuilder: (context, selectedItem) => ListTile(
              title: Text(selectedItem?.name ?? "belum memilih provinsi"),
            ),
            asyncItems: (text) async {
              var res = await http.get(
                Uri.parse(
                    "https://api.binderbyte.com/wilayah/provinsi?api_key=$apiKey"),
              );
              if (res.statusCode != 200) {
                return [];
              }
              List allProvince =
                  (json.decode(res.body) as Map<String, dynamic>)["value"];
              List<Province> allModelProvince = [];

              for (var element in allProvince) {
                allModelProvince.add(
                  Province(
                    id: element["id"],
                    name: element["name"],
                  ),
                );
              }
              return allModelProvince;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownSearch<City>(
            popupProps: const PopupProps.menu(
              showSearchBox: true,
              searchFieldProps: TextFieldProps(),
            ),
            onChanged: (value) => print(value?.toJson()),
            dropdownBuilder: (context, selectedItem) => ListTile(
              title: Text(selectedItem?.name ?? "belum memilih kota"),
            ),
            asyncItems: (text) async {
              var res = await http.get(
                Uri.parse(
                    "https://api.binderbyte.com/wilayah/kabupaten?api_key=$apiKey&id_provinsi=$idProv"),
              );
              if (res.statusCode != 200) {
                return [];
              }
              List allCity =
                  (json.decode(res.body) as Map<String, dynamic>)["value"];
              List<City> allModelCity = [];

              for (var element in allCity) {
                allModelCity.add(
                  City(
                    id: element["id"],
                    name: element["name"],
                    idProvinsi: element["id_provinsi"],
                  ),
                );
              }

              return allModelCity;
            },
          ),
        ],
      ),
    );
  }
}
