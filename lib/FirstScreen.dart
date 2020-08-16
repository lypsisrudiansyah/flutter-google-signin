import 'package:flutter/material.dart';
import 'package:google_signin/LoginScreen.dart';
import 'package:google_signin/SignIn.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [Colors.yellow[100], Colors.yellow[200]])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: imageUrl != null
                    ? NetworkImage(
                        imageUrl,
                      )
                    : AssetImage("assets/images/google_logo.png"),
                radius: 60,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 40),
              Text(
                "NAME",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              Text(name,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue)),
              SizedBox(height: 20),
              Text(
                "EMAIL",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              Text(email ?? "-",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue)),
              SizedBox(height: 20),
              Text(
                "PHONE NUMBER",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              Text(phoneNumber ?? "-",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue)),
              SizedBox(height: 40),
              RaisedButton(
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }), ModalRoute.withName("/"));
                },
                color: Colors.lightBlue,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Sign Out",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
