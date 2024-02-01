import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:sanketkportfolio/colors.dart';
import 'package:sanketkportfolio/data.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      backgroundColor: Kcolor.darkPurple,
      appBar: appbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              title("What I Know"),
              Wrap(
                spacing: (Get.width / 5) / 5,
                direction: Axis.horizontal,
                children: [
                  WhatIKnowCard(title: 'Frontend'),
                  WhatIKnowCard(title: 'Backend'),
                  WhatIKnowCard(title: 'Database'),
                  WhatIKnowCard(title: 'Dev Ops'),
                ],
              ),
              title("Projects"),
            ],
          ),
        ),
      ),
    );
  }

  Padding title(String name) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
      child: Text(
        name,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
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
    );
  }
}

class WhatIKnowCard extends StatelessWidget {
  final String title;
  WhatIKnowCard({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: Get.width / 6,
        height: (Get.width / 6) * 1.7,
        color: Kcolor.indigo,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 10),
              child: Text(
                title,
                style: TextStyle(
                    color: Kcolor.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: skills[title]
                          ?.entries
                          .map((e) => skillChip(e))
                          .toList() ??
                      []),
            )
          ],
        ),
      ),
    );
  }

  OutlinedButton skillChip(MapEntry<String, Color> e) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(e.key),
      style: ButtonStyle(
        padding: MaterialStatePropertyAll(EdgeInsets.all(5)),
        backgroundColor: MaterialStateProperty.all(Kcolor.darkPurple),
        side: MaterialStatePropertyAll(BorderSide(color: e.value)),
        foregroundColor: MaterialStatePropertyAll(Kcolor.grey),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: NetworkImage(''),
      //     fit: BoxFit.cover,
      //   ),
      // ),
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
                    'https://media.licdn.com/dms/image/C5103AQFyGWFFCKheig/profile-displayphoto-shrink_400_400/0/1579776175137?e=1712188800&v=beta&t=Tl-s5MMxqL9VUk3WZt8hFg_hS5OguKyBHi1_CBl4cGU'),
              ),
            ),
          ),
          Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                'Sanket Kankariya',
                style: TextStyle(
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(5, 5),
                        blurRadius: 5)
                  ],
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '@MemeAddict',
                style: TextStyle(
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(5, 5),
                        blurRadius: 5)
                  ],
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialMediaButton(
                appname: 'Stack Overflow',
                color: Color(0xFFF48024),
                icon: Icon(FontAwesomeIcons.stackOverflow),
                link: '',
              ),
              SocialMediaButton(
                appname: 'Youtube',
                color: Color(0xFFFF0000),
                icon: Icon(FontAwesomeIcons.youtube),
                link: '',
              ),
              SocialMediaButton(
                appname: 'Github',
                color: Color(0xFF2B3137),
                icon: Icon(FontAwesomeIcons.github),
                link: '',
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialMediaButton(
                appname: 'Instagram',
                color: Color(0xFF833AB4),
                icon: Icon(FontAwesomeIcons.instagram),
                link: '',
              ),
              SocialMediaButton(
                appname: 'Linked In',
                color: Colors.blue,
                icon: Icon(FontAwesomeIcons.linkedin),
                link: '',
              ),
              SocialMediaButton(
                appname: 'X',
                color: Colors.black,
                icon: Icon(FontAwesomeIcons.xTwitter),
                link: '',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final String appname;
  final String link;
  final Icon icon;
  final Color color;
  const SocialMediaButton({
    super.key,
    required this.appname,
    required this.link,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: icon,
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            'Follow me on ',
            style: TextStyle(color: Colors.white),
          ),
        ),
        style: ButtonStyle(
          elevation: MaterialStatePropertyAll(0),
          fixedSize: MaterialStatePropertyAll(Size(200, 40)),
          iconColor: MaterialStatePropertyAll(Colors.white),
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
