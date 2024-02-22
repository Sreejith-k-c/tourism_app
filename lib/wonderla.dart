import 'package:flutter/material.dart';

import 'hotel2.dart';

class Tourplaces2 extends StatelessWidget {
  const Tourplaces2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/images/wonderla.jpg"),
            height: 200,width: 400,),
          Text("Wonderla,Kochi"),
          Icon(Icons.place),
          ElevatedButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TourHotel2()));
          },
              child: Text("check hotel")),
          Text(
            "Wonderla",
          ),
          Expanded(child: SingleChildScrollView(
            scrollDirection:Axis.vertical,
            child: const Text("""Large amusement park featuring land & water rides, including options for
             small kids, plus 3D films.
          """),
          ),
          ),
        ],
      ),
    );
  }
}