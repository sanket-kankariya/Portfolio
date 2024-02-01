import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:sanketkportfolio/secretkeys.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  @override
  void onInit() async {
    print(await getHeaderImage());
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

Future<String> getHeaderImage() async {
  print("object");
  http.Response response = await http.get(Uri.https(
      'https://api.unsplash.com/photos/random?client_id=$unsplashApiKey&per_page=1'));
  print(response.body);

  jsonDecode(response.body)['urls']['regular'];
  print(jsonDecode(response.body));
  return "df";
}
