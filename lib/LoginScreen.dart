import 'package:flutter/material.dart';
import 'package:google_signin/FirstScreen.dart';
import 'package:google_signin/SignIn.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    image: DecorationImage(
                        image: AssetImage("assets/images/rudiansyahlfv.png"))),
              ),
              SizedBox(height: 50),
              _signInButton()
            ],
          ),
        ),
      ),
    );
  }

  /// Sign In Button
  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey[300],
      onPressed: () {
        signInWithGoogle().then((_) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return FirstScreen();
          }));
        }).catchError((onError) {
          print(onError);
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 5,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage("assets/images/google_logo.png"),
                height: 35.0),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Sign in with Google",
                style: TextStyle(fontSize: 20, color: Colors.blue[400]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
