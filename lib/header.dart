import 'package:flutter/material.dart';
import 'dart:html' as html;

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    child: Image.network(
                      "assets/Icon.png",
                      scale: .85,
                      width: 60,
                      height: 60,
                    )),
              ),
              SizedBox(
                width: 16,
              ),
              Text("飲酒記録", style: TextStyle(fontSize: 26))
            ],
          ),
        ],
      ),
    );
  }
}
