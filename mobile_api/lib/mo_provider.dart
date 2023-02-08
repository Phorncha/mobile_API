import 'dart:convert';

import 'package:http/http.dart';
import 'package:mobile_api/mo_list_model.dart';
import 'package:mobile_api/mo_model.dart';

class moprovider {
  get pack => null;

  Future<molistModel> getmolist() async {
    var url = Uri.http('swapi.dev', 'api/people/');
    Response res = await get(url);
   if (res.statusCode == 200) {
      dynamic body = jsonDecode(res.body);
      molistModel pModel = molistModel.fromJson(body);
      return pModel;
    } else {
      print("Can't get response from server");
      throw "Server exception";
    }
  }
 
  Future<moModel> getmoModel(String page) async {
    var url = Uri.http('swapi.dev', 'api/people/' + page);
    Response res = await get(url);
    if (res.statusCode == 200) {
      dynamic body = jsonDecode(res.body);
      moModel model = moModel.fromJson(body);
      return model;
    } else {
      print("Can 't get response from server");
      print(page);
      throw "Server exception";
    }
  }
}
