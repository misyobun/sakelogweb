import 'package:flutter/material.dart';
import './header.dart';
import './utils/responsive_layout.dart';
import 'dart:html' as html;

void main() {
  runApp(MaterialApp(
    title: '飲酒記録',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFFFFFBFF),
          Color(0xFFEB3C78),
        ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              child: Column(
            children: <Widget>[Header(), Body()],
          )),
        ));
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              child: Row(
                children: [
                  SizedBox(width: 32),
                  Image.network("assets/lp2.png", scale: .85),
                  SizedBox(width: 16),
                  Image.network("assets/lp1.png", scale: .85)
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "飲酒記録",
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF111111)),
                  ),
                  SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      text: "飲酒量や休肝日を記録して、飲酒生活を楽しもう！",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      html.window.open(
                          'https://apps.apple.com/jp/app/id1506164976?platform=iphone&name=lp',
                          '');
                    },
                    child:
                        Image.network("assets/app_store_dl.webp", height: 50),
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

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "飲酒記録",
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF111111)),
            ),
            SizedBox(height: 16),
            RichText(
              text: TextSpan(
                text: "飲酒量や休肝日を記録して、飲酒生活を楽しもう！",
                style: TextStyle(fontSize: 24, color: Color(0xFF000000)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text(""),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Column(
              children: [
                Image.network("assets/lp2.png", width: 240),
                SizedBox(height: 16),
                Image.network("assets/lp1.png", width: 240),
              ],
            )),
            SizedBox(
              height: 32,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  html.window.open(
                      'https://apps.apple.com/jp/app/id1506164976?platform=iphone&name=lp',
                      '');
                },
                child: Image.network("assets/app_store_dl.webp", height: 50),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
