
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constraints.dart';


class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/steveJobs.png',
            width: 50
            ),
          SizedBox(width: 10),
          Text(
            'This is a placeholder at the moment. more information is to come.',
            style: GoogleFonts.comfortaa(
              fontSize: 18
            ),
          ),
          Spacer(),
          NavItem(
            title: 'Home',
            tapEvent: (){},
          ),
          NavItem(
            title: 'Donate',
            tapEvent: (){},
          ),
          NavItem(
            title: 'About us',
            tapEvent: (){},
          ),
          NavItem(
            title: 'Login',
            tapEvent: (){},
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.title,
    @required this.tapEvent,
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}