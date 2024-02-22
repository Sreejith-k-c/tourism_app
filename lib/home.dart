import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'tour.dart';

class TourismHome extends StatefulWidget {
  const TourismHome({super.key});

  @override
  State<TourismHome> createState() => _TourismHomeState();
}

class _TourismHomeState extends State<TourismHome> {
  late SharedPreferences preferences;
  late String username;
  @override
  void initState() {
    fetchData();  //when the second page loads this method will execute
    super.initState();
  }
  void fetchData() async{
    preferences=await SharedPreferences.getInstance();
    setState(() {
      username=preferences.getString('uname')!;  //fetch the value from shared preferences
    });
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text("Tourism App"),
  backgroundColor: Colors.green,
  ),
  floatingActionButton: FloatingActionButton(onPressed: (){
  preferences.setBool('newuser', true);
  Navigator.of(context).push(
  MaterialPageRoute(builder: (context)=>Tour()));

  },
  backgroundColor: Colors.green,
  child: Icon(Icons.arrow_forward),
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  body: Center(
  child: Text("WELCOME"),
  )
  );
  }
  }
