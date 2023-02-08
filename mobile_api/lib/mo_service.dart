import 'package:flutter/cupertino.dart';
import 'package:mobile_api/main.dart';
import 'package:mobile_api/mo_list_model.dart';
import 'package:mobile_api/mo_model.dart';
import 'package:mobile_api/mo_provider.dart';

class moService {
  moprovider _moprovider = new moprovider();

  Future<molistModel> getmolist() {
    return _moprovider.getmolist();
  }

  Future<moModel> getmoModel(String page) {
    return _moprovider.getmoModel(page);
  }
}
