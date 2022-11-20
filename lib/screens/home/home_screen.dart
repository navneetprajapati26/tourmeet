import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              height: 40,
              width: width - 20,
              //color: Colors.cyanAccent,
              child: Text(
                "Truemeet",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 600,
                      width: width,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
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
                                child: Image.network(
                                  "https://justifiedgrid.com/wp-content/uploads/life/biking/137646854.jpg",
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          //todo: this is info. container
                          Container(
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
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
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  //todo: Name
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Ujala Yadav",
                                          style: TextStyle(
                                              fontSize: 33,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 7),
                                        child: Text(
                                          "Age 23",
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
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Icon(
                                          Icons.sunny,
                                          color: Colors.green,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
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
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Icon(
                                          Icons.sunny,
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          "Busy after 4PM",
                                          style: TextStyle(
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
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      alignment: Alignment.center,
                                      child: Text(
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
                  }),
            )
          ],
        ),
      ),
    );
  }
}
