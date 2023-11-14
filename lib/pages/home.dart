import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        Container(
          margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40.0,
                spreadRadius: 0,
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset("assets/icons/search.svg"),
              ),
              suffixIcon: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VerticalDivider(
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset("assets/icons/filter .svg"),
                    ),
                  ],
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        )
      ]),
    );
  }

  AppBar appBar() {
    return AppBar(
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
    );
  }
}
