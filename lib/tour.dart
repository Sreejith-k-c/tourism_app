import 'package:flutter/material.dart';
import 'munnar.dart';
import 'wonderla.dart';

class Tour extends StatelessWidget {
  const Tour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PLACES"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Tourplaces()));
            },
                child: Text("Munnar")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Tourplaces2()));
            }, child: Text("Wonderla")),
          )
        ],
      ),
    );
  }
}
