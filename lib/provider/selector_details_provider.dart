import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zwajib/helper/app_config.dart';
import 'package:zwajib/helper/http_exception.dart';
import 'package:zwajib/models/selector_details_models.dart';
import 'package:http/http.dart' as http;


class SelectorDetailsProvider with ChangeNotifier{


  List<SelectorDetails> _items = [];


  List<SelectorDetails> get items{
    return [..._items];
  }


  Future<void> getSelectorDetails(String selector) async {

  var url = Uri.parse(APP_BASE_URL + '/get-selector-details?selectid=$selector');
   print('before await');
   

  try{
    final response = await http.post(
        url,
        headers:{"Content-Type": "application/json"}
    );
    print('after await ${response.statusCode}');
    if(response.statusCode !=200){
      print(response.statusCode);
      print('Error when get all selectors');
    }

    final responseData = json.decode(response.body);
    print("responseData is $responseData");
    List<SelectorDetails> loadeditems = [];
    for(var unit in responseData){
      loadeditems.add(SelectorDetails.fromMap(unit));
    }

    print("selectors lenght ${loadeditems.length}");
    print(response.body);

    _items = loadeditems;

     notifyListeners();

  } catch (Exception){
    print(Exception.toString());
    throw(HttpException('error'));
  }

  }


}