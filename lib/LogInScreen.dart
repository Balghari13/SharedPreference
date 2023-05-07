import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async{
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString('name', 'Najm');
                sp.setInt('age', 25);
                sp.remove('name');
                print(sp.getString('name'));
                print(sp.getInt('age'));
                //print(add());
                //fun();
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: Center(child: Text('Click')),
              ),
            )
          ],
        ),
      ),
    );
  }

   // int add(){
   //  int a =4;
   //  int b = 5;
   //  int s = (a+b);
   //  return s;
   //
   // }
   // Future<void> fun() async{
   //  await Future.delayed(Duration(seconds: 3));
   //  print('delayed');
   // }
}
