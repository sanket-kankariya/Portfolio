import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
                  backgroundColor: MaterialStatePropertyAll(Colors.green[400])),
              onPressed: () {},
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  const Text(
                    'Contact Me',
                    style: TextStyle(color: Color.fromARGB(255, 223, 223, 223)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1614850715973-58c3167b30a0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                fit: BoxFit.cover,
              ),
              
            ),
            child: Row(
              children: [
                CircleAvatar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
