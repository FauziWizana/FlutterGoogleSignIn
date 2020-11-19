import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'login_page.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 340,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(180),
                          bottomRight: Radius.circular(180)),
                      image: DecorationImage(
                          image: AssetImage('assets/original.jpg'),
                          fit: BoxFit.cover)),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(imageUrl), fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Text('Wellcome back',
              style: GoogleFonts.sarabun(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey)),
          SizedBox(height: 30),
          Text(
            name,
            style: GoogleFonts.playfairDisplay(
                fontSize: 36, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 40,
          ),
          Text(email),
          SizedBox(
            height: 40,
          ),
          OutlineButton(
            onPressed: () {
              signOutGoogle();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LoginPage();
              }));
            },
            splashColor: Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            highlightElevation: 0,
            borderSide: BorderSide(color: Colors.grey),
            child: Container(
              width: 110,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      'Sign Out',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.pink),
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
