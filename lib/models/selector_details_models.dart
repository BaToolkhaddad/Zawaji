// To parse this JSON data, do
//
//     final selectorDetails = selectorDetailsFromMap(jsonString);

import 'dart:convert';


class SelectorDetails {
  SelectorDetails({
    this.pagecontentselectid,
    this.selectid,
    this.pagecontentselectname,
    this.pagecontentselectvaluetext,
    this.pagecontentselectvalue,
  });

  int? pagecontentselectid;
  String? selectid;
  String? pagecontentselectname;
  String? pagecontentselectvaluetext;
  String? pagecontentselectvalue;

  factory SelectorDetails.fromJson(String str) => SelectorDetails.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SelectorDetails.fromMap(Map<String, dynamic> json) => SelectorDetails(
    pagecontentselectid: json["pagecontentselectid"],
    selectid: json["selectid"],
    pagecontentselectname: json["pagecontentselectname"],
    pagecontentselectvaluetext: json["pagecontentselectvaluetext"],
    pagecontentselectvalue: json["pagecontentselectvalue"],
  );

  Map<String, dynamic> toMap() => {
    "pagecontentselectid": pagecontentselectid,
    "selectid": selectid,
    "pagecontentselectname": pagecontentselectname,
    "pagecontentselectvaluetext": pagecontentselectvaluetext,
    "pagecontentselectvalue": pagecontentselectvalue,
    
  };
}
