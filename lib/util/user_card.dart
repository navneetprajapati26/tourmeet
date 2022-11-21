import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  String name;
  String age;
  String busy_after;
  String img_url;

  UserCard(
      {Key? key,
      required this.name,
      required this.age,
      required this.busy_after,
      required this.img_url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: 600,
      width: width,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          //todo: this is imag. container
          Container(
            height: 600,
            width: width,
            decoration: BoxDecoration(
                //color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(30)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  img_url,
                  fit: BoxFit.cover,
                )),
          ),
          //todo: this is info. container
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff332727),
                    Color(0x98332727),
                    Color(0x80332727),
                    Color(0x66332727),
                    Color(0x4C332727),
                    Color(0x00ffffff)
                  ],
                  begin: Alignment.bottomRight,
                  //end: Alignment.center
                )),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //todo: Name
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          name,
                          style: TextStyle(
                              fontSize: 33,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Text(
                          "Age $age",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  //todo: Free and busy
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.sunny,
                          color: Colors.green,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Free Now",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.sunny,
                          color: Colors.redAccent,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Busy after $busy_after",
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  //todo: Book Meeting Btn
                  CupertinoButton(
                    onPressed: () {
                      //todo: Book Meeting btn
                    },
                    child: Container(
                      height: 65,
                      width: width - 70,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: const Text(
                        "Book Meeting",
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
        ],
      ),
    );
  }
}
