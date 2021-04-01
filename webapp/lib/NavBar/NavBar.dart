import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){ //layout will be responsive to screen constraints
        if(constraints.maxWidth > 1200){
          //for desktops
          return DesktopNavbar();
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800){
          //for tablets
          return DesktopNavbar();
        } else {
          //for mobile devices
          return MobileNavbar();
        }//elif
      },//builder
      ); //layoutbuilder
  }//widget build
}//navbar class

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20,horizontal:40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Title of the webpage",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30
            ),), //text
            Row(
              children: <Widget>[
                Text("Home",style: TextStyle(color: Colors.white)),
                SizedBox(width: 30),
                Text("About Us",style: TextStyle(color: Colors.white)),
                SizedBox(width: 30),
                Text("Portfolio",style: TextStyle(color: Colors.white)),
                SizedBox(width: 30),
                MaterialButton(
                  color: Colors.pink, 
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0) )),
                  onPressed: (){},
                  child: Text("Sign Up",style: TextStyle(color: Colors.white))
                  ),
              ]
            )
          ],//children
        ),//row
      ),
    );//container
  }//widget build
}//class desktop Navbar

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20,horizontal:40),
      child: Container(
        child: Column(
          children: <Widget>[
              Text("Title of the webpage",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30
              ),), //text
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Home",style: TextStyle(color: Colors.white)),
                    SizedBox(width: 30),
                    Text("About Us",style: TextStyle(color: Colors.white)),
                    SizedBox(width: 30),
                    Text("Portfolio",style: TextStyle(color: Colors.white)),
                    SizedBox(width: 30),
                  ]
                ),
              )
            ],//children
        )
      ),
    );
  }
}

