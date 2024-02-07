import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

// import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  final RxString headerbgimg =
      'https://images.unsplash.com/photo-1546453667-8a8d2d07bc20?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
          .obs;

  @override
  void onInit() async {
    // headerbgimg(await getHeaderImage());
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

// Future<String> getHeaderImage() async {
//   http.Response response = await http.get(Uri.parse(
//       'https://api.unsplash.com/photos/random?client_id=${dotenv.env['unsplashApiKey']}}&per_page=1&query=abstract'));
//   return jsonDecode(response.body)['urls']['regular'];
// }
