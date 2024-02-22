import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourism_app/home.dart';
import 'package:tourism_app/tour.dart';

void main(){
  runApp(MaterialApp(home: TourismLogin(),));
}

class TourismLogin extends StatefulWidget {
  const TourismLogin({super.key});

  @override
  State<TourismLogin> createState() => _LoginSharedState();
}

class _LoginSharedState extends State<TourismLogin> {
  final email=TextEditingController();
  final pwd=TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;

  @override
  void initState() {
    check_if_user_already_login();
    super.initState();
  }

  void check_if_user_already_login() async {
    preferences=await SharedPreferences.getInstance();
    newuser = preferences.getBool('userlogin') ?? true;
    if(newuser==false){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>TourismHome()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Tourism Login"),
      ),
      body: Center(
        child: Column(
          children: [
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
              preferences=await SharedPreferences.getInstance();
              String username=email.text;
              String pass=pwd.text;

              if(username != ""&& pass !=""){
                preferences.setString('uname', username);
                preferences.setString('pword', pass);
                preferences.setBool('userlogin', false);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder:(context)=>Tour()));
              }
              email.text="";
              pwd.text="";
            },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
