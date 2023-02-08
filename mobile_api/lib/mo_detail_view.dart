import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_api/mo_model.dart';

import 'package:mobile_api/mo_service.dart';

class moDetailScreen extends StatelessWidget {
  moService moservice = moService();
  moDetailScreen({required this.title, required this.url, required this.page});
  String title;
  String url;
  String page;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: FutureBuilder( 
          future: moservice.getmoModel(page.toString()),
          builder: (context, AsyncSnapshot<moModel> snapshot) {
            if (snapshot.hasData) {
              moModel data = snapshot.data!;
              return Scaffold(
                body: Center(
                  child: Column(children: [
                    Text(
                      "Name: ${data.name}",
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Gender: ${data.gender}"),
                    Text("Height: ${data.height}"),
                    Text("Hair: ${data.hairColor}"),
                    Text("Phornchai Hompromma 633410021-7"),
                  ]),
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ));
  }
}
