import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../dashboard/dashboard.dart';
class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFFFE7D0),
                Color(0xFFF5DCDC),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  children: [
                    Text("+91 7271088606",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0,top: 8,bottom: 8),
                child: Row(
                  children: [
                    Text("Enter The",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.indigo),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  children: [
                    Text("OTP",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.indigo),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: "OTP"),
              ),
              SizedBox(height: 30,),
              CupertinoButton(
                onPressed: () {
                  //todo: otp btn
                  Get.to(() => Dashboard());
                },
                padding: EdgeInsets.zero,
                child: Container(
                  height: 65,
                  width: width-20,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  child: Text(
                    "Go to Home",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
