import 'dart:async';
import 'package:assignment/const/primarybutton.dart';
import 'package:assignment/screen/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    var height = size.height;
    var width = size.width;
    bool _checkbox = false;
    bool newValue;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/loginback1.jpg"),
              fit: BoxFit.cover,
              opacity: 0.5
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height*0.3,
                ),
                const Text("Welcome", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                const SizedBox(height: 14,),
                const Text("Mobile number", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                const SizedBox(height: 14,),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter here",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 2,
                              color: Colors.black
                          )
                      )
                  ),
                ),
                SizedBox(height: height*0.2,),
                Row(
                  children: [
                    Checkbox(
                      value: _checkbox,
                      onChanged: (value) {
                        setState(() {
                          _checkbox = !_checkbox;
                        });
                      },
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("I agree to the", style: TextStyle(fontSize: 16),),
                            Text(" Terms and Conditions", style: TextStyle(fontSize: 16,color: Colors.deepOrange, decoration: TextDecoration.underline),),
                            Text(" and", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Text("Privacy Statement.", style: TextStyle(fontSize: 16,color: Colors.deepOrange,decoration: TextDecoration.underline),),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 34,),
                PrimaryButton(
                  title: "Get OTP",
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
