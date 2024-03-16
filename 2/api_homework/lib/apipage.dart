import 'dart:convert';

import 'package:api_homework/country.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
// State variable
  List<Anime>? _anime;

// เมธอดสำหรับโหลดข้อมูล
  void _getCountries() async {
    var dio = Dio(BaseOptions(responseType: ResponseType.plain));
    var response = await dio.get('https://api.sampleapis.com/cartoons/cartoons2D');
    setState(() {
      List list = jsonDecode(response.data);

      _anime = list.map((anime) => Anime.fromJson(anime)).toList();
    });
    // _countries = list.map<Country>((country) {
    //   return Country(
    //     name: country['name'],
    //   );
    // }).toList();

    // เรียงลำดับตามชื่อจาก A ไป Z (กรณีต้องการเรียงลำดับ) ยังทำไม่ได้
    // _countries!.sort((a, b) => a.name.compareTo(b.name));
    // var dio = Dio(BaseOptions(responseType: ResponseType.plain));
    // var response = await dio.get('https://api.sampleapis.com/countries/countries');
    // List list = jsonDecode(response.data);

    // setState(() {
    //   _countries = list.map((country) => Country.fromJson(country)).toList();

    //   // เรียงลำดับตามชื่อจาก A ไป Z (กรณีต้องการเรียงลำดับ)
    //   // _countries!.sort((a, b) => a.name.compareTo(b.name));
    // });
  }

  @override
  void initState() {
    super.initState();
    // เรียกเมธอดสำหรับโหลดข้อมูลใน initState() ของคลาสที่ extends มาจาก State
    _getCountries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ElevatedButton(
          //   onPressed: () async {
          //     _getCountries();
          //   },
          //   child: Text('Get countries'),
          // ),
          Expanded(
            child: _anime == null
                ? SizedBox.shrink()
                : ListView.builder(
                    itemCount: _anime!.length,
                    itemBuilder: (context, index) {
                      var anime = _anime![index];

                      return ListTile(
                        title: Text(anime.name ?? ''),
                        subtitle: Text(anime.year.toString()),
                        // leading: Text(anime.image ?? ''),
                        // give placeholder image when no image

                        trailing: anime.image == '' ? null : Image.network(anime.image),

                        onTap: () {
                          showDialog<void>(
                            context: context,
                            // barrierDismissible: false,
                            builder: (BuildContext context) {
                              return AlertDialog.adaptive(
                                title: Center(
                                  child: Text(anime.name ?? 'ไม่มีชื่อ'),
                                ),
                                // name: json['title'],
                                // year: json['year'],
                                // rating: json['rating'],
                                // episodes: json['episodes'],
                                // image: json['image'],
                                content: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Year : ' + anime.year.toString(),
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Rating : ' + anime.rating.toString(),
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Episode : ' + anime.episodes.toString()),
                                      ],
                                    ),
                                    Expanded(child: Image.network(anime.image)),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
          )
        ],
      ),
    );
  }
}
