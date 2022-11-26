import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/story_view.dart';

class UserProfilesScreen extends StatelessWidget {
  const UserProfilesScreen({Key? key}) : super(key: key);

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
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final StoryController controller = StoryController();

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
            //todo: top Bar
            Container(
              height: 40,
              width: width - 20,
              //color: Colors.cyanAccent,
              child: Row(
                children: [
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.indigo,
                    ),
                  ),
                  const Text(
                    "User",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                Container(
                  height: 400,
                  width: width,
                  decoration: BoxDecoration(
                      //color: Colors.cyanAccent,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                      // child: Image.network(
                      //   img9,
                      //   fit: BoxFit.cover,
                      // )
                    child: StoryView(
                      controller: controller,
                      storyItems: [
                        StoryItem.inlineImage(controller: controller, url: img1),
                        StoryItem.inlineImage(controller: controller, url: img2,),
                        StoryItem.inlineImage(controller: controller, url: img3),
                        StoryItem.inlineImage(controller: controller, url: img4),
                        StoryItem.inlineImage(controller: controller, url: img5)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        //border: Border.all(color: Colors.black12)
                    ),
                    child: Padding(
                      padding:
                      EdgeInsets.all(5),
                      child: Column(
                        children: [
                          //todo: Name and Age
                          Row(
                            children: const [
                              Text(
                                "Navneet",
                                style: TextStyle(
                                    fontSize: 55,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "23",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.developer_mode_outlined,
                                color: Colors.indigo,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Flutter Developer ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.maps_home_work_rounded,
                                color: Colors.indigo,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Living in Varanasi ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.map_rounded,
                                color: Colors.indigo,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "5 kilometre away ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),


                          SizedBox(height: 10,),
                          Row(
                            children: const [
                              Padding(
                                padding:
                                EdgeInsets.all(5),
                                child: Text(
                                  "About me",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("The Notification Panel is a place to quickly access alerts, notifications and shortcuts. The Notification Panel is at the top of your mobile device's screen. It is hidden in the screen but can be accessed by swiping your finger from the top of the screen to the bottom. It is accessible from any menu or application."
                              ,),
                          ),
                          SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
