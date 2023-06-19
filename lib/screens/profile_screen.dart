import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/widgets/profile_widgets/user_info.dart';

import '../utils/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              const Icon(
                Icons.lock,
                size: 20,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Captain America',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 20,
                color: Colors.black,
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: Column(children: [
          UserInfo(),
        ]),
      ),
    );
  }
}
