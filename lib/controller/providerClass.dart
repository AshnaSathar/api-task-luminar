import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/modelClass.dart';
import 'package:http/http.dart' as http;

class Providerclass with ChangeNotifier {
  ApiModelClass? responseData;
  Future<void> getData() async {
    final url = Uri.parse("https://fakestoreapi.com/products/1");
    final response = await http.get(url);
    final responseData = ApiModelClass.fromJson(jsonDecode(response.body));
    print(responseData);
    notifyListeners();
    print("response:${response.body}");
  }
}
