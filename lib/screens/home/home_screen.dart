import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe_cards/swipe_cards.dart';

import '../../util/user_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String img1 ="https://justifiedgrid.com/wp-content/uploads/life/biking/137646854.jpg";
    String img2 ="https://images.unsplash.com/photo-1606893995103-a431bce9c219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBob3RvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
    String img3 ="https://plus.unsplash.com/premium_photo-1664701475272-953393050754?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
    String img4 ="https://images.unsplash.com/photo-1544465544-1b71aee9dfa3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHBob3RvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
    String img5 ="https://images.unsplash.com/photo-1482482097755-0b595893ba63?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGhvdG98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
    String img6 ="https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
    String img7 ="https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
    String img8 ="https://images.unsplash.com/photo-1612230337141-903f3d330055?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fHBob3RvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
    String img9 ="https://images.unsplash.com/photo-1568175548680-119155ab3e66?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHBob3RvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
    String img10 ="https://images.unsplash.com/photo-1550142823-32fc00a5f83f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHBob3RvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";


    List<String> img =[img1,img2,img3,img4,img5,img6,img7,img8,img9,img10];
    List<String> name =["User 1","User 2","User 3","User 4","User 5","User 6","User 7","User 8","User 9","User 10"];
    List<String> age =["21","23","22","25","27","24","26","30","28","29"];
    List<String> busy_after =["1AM","3PM","4PM","11AM","1AM","7AM","8AM","12AM","5AM","1AM"];


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
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 40,
              width: width - 20,
              //color: Colors.cyanAccent,
              child: const Text(
                "Truemeet",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: PageView.builder(
                  itemCount: img.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return UserCard(
                      img_url: img[index],
                      name: name[index],
                      age: age[index],
                      busy_after: busy_after[index],

                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
