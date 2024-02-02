import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:sanketkportfolio/secretkeys.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final RxnString headerbgimg = RxnString(null);

  @override
  void onInit() async {
    headerbgimg(await getHeaderImage());
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
  http.Response response = await http.get(Uri.parse(
      'https://api.unsplash.com/photos/random?client_id=$unsplashApiKey&per_page=1&query=abstract'));
  return jsonDecode(response.body)['urls']['regular'];
}
