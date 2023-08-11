import 'package:assignment/const/primarybutton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    var height = size.height;
    var width = size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height*0.50,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/homeback.jpg"),
                    fit: BoxFit.cover,
                    opacity: 0.15
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.add_alarm,size: 18,color: Colors.white),
                      SizedBox(width: size.width*0.01,),
                      const Text("It's a date", style: TextStyle(fontSize: 20,color: Color(0xffbf2f2f2), fontWeight: FontWeight.w400),),
                    ],
                  ),
                  SizedBox(height:height*0.03 ,),
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Student.jpg",),
                    radius: 72,
                  ),
                  SizedBox(height: height*0.015,),
                  const Text("This meeting is Accepted by", style: TextStyle(fontSize: 20,color:  Color(0xffbf2f2f2), fontWeight: FontWeight.w400),),
                  SizedBox(height: height*0.015,),
                  const Text("Robaert Fox", style: TextStyle(fontSize: 30,color: Colors.white, fontWeight: FontWeight.w500),),
                  SizedBox(height: height*0.015,),
                  const Text("in 2 week 4 days", style: TextStyle(fontSize: 20,color:  Color(0xffbf2f2f2), fontWeight: FontWeight.w400),),
                ],
              ),
            ),
            Flexible(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    children: [
                      const Text("Meet Details", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.w500),),
                      SizedBox(height: height*0.02,),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape. rectangle,
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Tuesday", style: TextStyle(fontSize: 18, color: Colors.black54),),
                                    Text("|", style: TextStyle(fontSize: 18, color: Colors.black54),),
                                    Text("08/08/23", style: TextStyle(fontSize: 18, color: Colors.black54),),
                                    Text("|", style: TextStyle(fontSize: 18, color: Colors.black54),),
                                    Text("08:00 PM", style: TextStyle(fontSize: 18, color: Colors.black54),),
                                  ],
                                ),
                                Divider(
                                  thickness: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Location:", style: TextStyle(fontSize: 18, color: Colors.black),),
                                    Text("New Hotel Palace", style: TextStyle(fontSize: 18, color: Colors.black54),),
                                    Icon(Icons.arrow_forward_ios_rounded)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.05,),
                      SizedBox(
                        width: width,
                        child: TextButton(onPressed:() {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 12 ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:  BorderRadius.circular(10),
                                    side: const BorderSide(
                                        color: Colors.black,
                                        width: 1
                                    )
                                )
                            ),
                            child: const Text("Cancel Meet", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
                            )),
                      ),
                      const SizedBox(height: 16,),
                      const PrimaryButton(title: "Close")

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
