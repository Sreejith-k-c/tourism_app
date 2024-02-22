import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourism_app/main.dart';
import 'home.dart';

void main(){
  runApp(MaterialApp(home: TourismRegister(),));
}

class TourismRegister extends StatefulWidget {
  const TourismRegister({super.key});

  @override
  State<TourismRegister> createState() => _TourismRegisterState();
}

class _TourismRegisterState extends State<TourismRegister> {
  final name=TextEditingController();
  final email=TextEditingController();
  final pwd=TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("REGISTRATION"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:'Name'
                ),
                controller:name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:'Email'
                ),
                controller:email,
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(10.0),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password'
                ),
                controller: pwd,
              ),
            ),
            ElevatedButton(onPressed: () async{
              //shared preference instance creation
              preferences=await SharedPreferences.getInstance();
              String username=email.text;
              String pass=pwd.text;

              if(username != ""&& pass !=""){
                preferences.setString('uname', username);
                preferences.setString('pword', pass);
                //Set the user logged in
                preferences.setBool('userlogin', false);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder:(context)=>TourismHome()));
              }
              name.text="";
              email.text="";
              pwd.text="";
            },
                child: Text("Register"))
          ],
        ),
      ),
    );
  }
  void storedata() async {
    String personname=name.text;
    String mailid=email.text;
    String password=pwd.text;

    preferences = await SharedPreferences.getInstance();
    preferences.setString('name', personname);
    preferences.setString('email',mailid );
    preferences.setString('pwd', password);

    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TourismLogin()));
  }
}