import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkHelper{
  final String url;
  NetworkHelper({this.url});

  Future getData() async{
    http.Response response = await http.get(url, headers:{"Authorization":" Bearer test_680593d5bebc54c900868ad116367b"});
    if(response.statusCode == 200) {
      return jsonDecode(response.body);

    }
    else{
      print(response.statusCode);
      return null;
    }
  }
}