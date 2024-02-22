import 'package:flutter/material.dart';

import 'hotel.dart';

class Tourplaces extends StatelessWidget {
  const Tourplaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/images/munnar.cms"),
          height: 200,width: 400,),
          Text("Munnar,Kerala"),
          Icon(Icons.place),
          ElevatedButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TourHotel()));
          },
              child: Text("check hotel")),
          Text(
            "Munnar",
          ),
          Expanded(child: SingleChildScrollView(
            scrollDirection:Axis.vertical,
            child: const Text("""Munnar is a town in the Western Ghats mountain range in
             India’s Kerala state. A hill station and former resort for the British Raj
              elite, it's surrounded by rolling hills dotted with tea plantations established 
              in the late 19th century. Eravikulam National Park, a habitat for the endangered 
              mountain goat Nilgiri tahr, is home to the Lakkam Waterfalls, hiking trails and 
              2,695m-tall Anamudi Peak.
          """),
          ),
          ),
        ],
      ),
    );
  }
}