import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 10.0, //shadow under the app bar
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() { //return type Widget
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, //the cross axis to a column is horizontal
        children: <Widget> [
          Text('Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8.0),//used hieght property of sized box as padding between widgets
          RaisedButton(
            child: Text(
              'Sign in with Google',
              style: TextStyle(color: Colors.black87, fontSize: 15, ),
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0),)
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }//_buildContent

}//class
