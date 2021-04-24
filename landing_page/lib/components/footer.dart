

import 'package:flutter/material.dart';

import '../constraints.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              'All Rights Reserved (c) 2021',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            ),

            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  NavItem(
                    title: 'Twitter',
                    tapEvent: () {},
                  ),

                  NavItem(
                    title: 'LinkedIn',
                    tapEvent: () {},
                  ),

                  NavItem(
                    title: 'Twitter',
                    tapEvent: () {},
                  ),
                ],
              )
            ),
        ]
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.title,
    @required this.tapEvent
  }) : super(key: key);
final String title;
final GestureTapCancelCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric( horizontal: 10),
        child: Text(
          title,
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 12,
          ),
        ),  
        ),
    );
  }
}