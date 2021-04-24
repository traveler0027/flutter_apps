import 'package:flutter/material.dart';
import 'package:landing_page/components/Footer.dart';
import 'package:landing_page/components/header.dart';
import 'package:landing_page/constraints.dart';

import 'components/JumboRan.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Header(),
            JumpRan(),
            Footer(),
          ],
        ),
      ),
    );
  }
}

