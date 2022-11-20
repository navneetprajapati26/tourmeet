import 'package:flutter/material.dart';
class MassegeScreen extends StatelessWidget {
  const MassegeScreen({Key? key}) : super(key: key);

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
        alignment: Alignment.center,
        child: Container(
          height: height/2,
          width: width-40,
          //color: Colors.indigo,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff332727),
                  Color(0x98332727),
                  Color(0x80332727),
                  Color(0x66332727),
                  Color(0x4C332727),
                  Color(0xFFFFFF)

                ],
                begin: Alignment.bottomRight,
                //end: Alignment.center
              )
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Massage_screen",style: TextStyle(
                  fontSize: 35,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold),),
              Text("Work in Progress ",style: TextStyle(
                  fontSize: 25,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
