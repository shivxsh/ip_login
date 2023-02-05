import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_animation/constants.dart';
import 'package:rive_animation/screens/search.dart';
import 'package:rive_animation/utils/rive_utils.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late SMIBool searchTrigger;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomnavbar
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: backgroundColor2.withOpacity(0.8),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    searchTrigger.change(true);
                  },
                child: const SizedBox(
                  height: 36,
                  width: 36,
                  child: RiveAnimation.asset(
                    "assets/RiveAssets/icons.riv",
                    artboard: "HOME",
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  //searchTrigger.change(true);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SearchScreen()),
                  );
                },
                child: const SizedBox(
                  height: 36,
                  width: 36,
                  child: RiveAnimation.asset(
                    "assets/RiveAssets/icons.riv",
                    artboard: "SEARCH",
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  searchTrigger.change(true);
                },
                child: const SizedBox(
                  height: 36,
                  width: 36,
                  child: Icon(
                    CupertinoIcons.news,
                    color: Colors.white,
                    size: 32,
                  ),
                  // child: RiveAnimation.asset(
                  //   "assets/RiveAssets/springy_icons.riv",
                  //   artboard: "doc",
                  //
                  // ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  searchTrigger.change(true);
                },
                child: const SizedBox(
                  height: 36,
                  width: 36,
                  child: Icon(
                    CupertinoIcons.star,
                    color: Colors.white,
                    size: 30,

                  ),
                  // child: RiveAnimation.asset(
                  //   "assets/RiveAssets/icons.riv",
                  //   artboard: "HOME",
                  // ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  searchTrigger.change(true);
                },
                child: const SizedBox(
                  height: 36,
                  width: 36,
                  child: RiveAnimation.asset(
                    "assets/RiveAssets/icons.riv",
                    artboard: "USER",

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20,top: 20),
          child: Text(
            "Welcome!",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 43,
            ),
          ),
        ),
      ),
    );
  }
}
