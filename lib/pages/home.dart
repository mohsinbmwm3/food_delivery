import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Breakfast",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () => {},
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              "assets/icons/back_nav.svg",
              height: 25,
              width: 25,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => {},
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xffF7F8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: SvgPicture.asset(
                "assets/icons/dots.svg",
                height: 25,
                width: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
