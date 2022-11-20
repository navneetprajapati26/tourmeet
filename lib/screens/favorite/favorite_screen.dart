import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("favorite_screen",style: TextStyle(
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
    );
  }
}
