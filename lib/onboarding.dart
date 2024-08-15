import 'package:chatvp/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Text("Your Persnolize Chat-bot!!",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.blue)),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text("Welcome to our AI-powered chatbot! Ready to assist you instantly with tasks, questions, and more, right at your fingertips.",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: 50,),
          Image.asset("assets/images/img-removebg-preview.png",height: 380,),
          SizedBox(height: 50,),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Home(),)),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 40),
                child: Text("Get Started!!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.shade300
              ),
            ),
          )
        ],
      ),
    );
  }
}
