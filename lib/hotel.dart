import 'package:flutter/material.dart';

class TourHotel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(""),
        actions: [
          const Icon(Icons.card_travel),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      Image(image: AssetImage("assets/images/hillview1.jpg"),
      height: 200,width: 400,),
    Text("Hillview,Munnar,Kerala"),
    Icon(Icons.place),
    ],
    ),
    );
  }
}
