import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF14131A),
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
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFF207448),
                ),
              ),
              onPressed: () {},
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  const Text(
                    'Contact Me',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [Header()],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.network(
                  'https://ez-snippet.vercel.app/_next/image?url=%2Fimages%2FprofilePic.jpeg&w=256&q=75',
                ),
              ),
            ),
          ),
          Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                'Sanket Kankariya',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '@AverageEnjoyer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          SizedBox(),
          SizedBox(),
          SizedBox(),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.instagram),
            label: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text('Follow me on Instagram'),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xFF1c1b23)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
