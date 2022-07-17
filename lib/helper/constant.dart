import 'package:flutter/cupertino.dart';

String authorizationToken = "";


const nextPageURL = '';


const String baseUrl =
    "https://sand.vandemission.com/api/v1/";
    
const String stateAPI = "beforelogin/state";
const int timout = 30000;

class Constants{
  static height(context)=> MediaQuery.of(context).size.height;
  static width(context)=> MediaQuery.of(context).size.width;
}