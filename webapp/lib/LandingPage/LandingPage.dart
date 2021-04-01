import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  
  List <Widget> pageChildren(double width){
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Website \nDevelopers", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.white,
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                " some info on the subject", style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white
                  )
              ),
            ),
            MaterialButton(
                  color: Colors.white, 
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0) )),
                  onPressed: (){},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                    child: Text("Our Packages",style: TextStyle(color: Colors.red)),
                  )
              ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Image.asset(
          'assets/images/logo_owl_blue_name.png',
          width: width,
        ),
      ),
    ];//return widget
  }//list page children

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){ //layout will be responsive to screen constraints
        if(constraints.maxWidth > 800){
          //for tablets
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width/2),
          );
        } else {
          //for mobile devices
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }//elif
      },//builder
      ); //layoutbuilder
  }
}
