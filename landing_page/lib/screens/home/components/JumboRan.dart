

import 'package:flutter/material.dart';
import 'package:landing_page/components/main_button.dart';
import 'package:landing_page/constraints.dart';

class JumpRan extends StatelessWidget {
  const JumpRan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( vertical: 20, horizontal:40),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'placeHolder1',
                          style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: 'placeHolder2',
                          style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800, color: kPrimaryColor),
                        ),
                      ], //childen
                    ),
                  ),

                  Text(
                    'placeholder3',
                    style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800)
                  ),

                  Text(
                    'placeholder4',
                    style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800)
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Help us in making the world a better place',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300)
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: <Widget>[
                      MainButton(
                        title: 'Plceholder5',
                        tapEvent: () {},
                        color: kPrimaryColor,
                      ),
                      
                      SizedBox(width: 30),
                      
                      MainButton(
                        title: 'Plceholder6',
                        tapEvent: () {},
                        color: kSecondaryColor,
                      ),
                    ]
                  )
                ],
              ),
            ),
            ),
            Expanded(
              child: Image.asset('assets/images/steveJobs.png'),
            )
        ],
      ),
    );
  }
}
