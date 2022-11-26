import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/story_view.dart';

import '../dialog/Custom_dialog.dart';
import '../screens/Meeting/meeting_screen.dart';
import '../screens/massege/massege_screen.dart';
import '../screens/users_profile/users_profile_screen.dart';

class UserCard extends StatelessWidget {
  String name;
  String age;
  String busy_after;
  //int img_count;
 // String img_url;

  UserCard(
      {Key? key,
      required this.name,
      required this.age,
      required this.busy_after,
      //required this.img_count,
      //required this.img_url
      })
      : super(key: key);

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
                // child: PageView.builder(
                //     itemCount: img.length,
                //     itemBuilder: (context, index) {
                //       return Image.network(
                //         img[index],
                //         fit: BoxFit.cover,
                //       );
                //     })

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
          //todo: this is info. container
          Container(
            height: 200,
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
                  GestureDetector(
                    onTap: (){
                      Get.to(() => UserProfilesScreen());
                    },
                    child: Row(
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

                      //todo: DilogBtn
                      Get.dialog(
                          CustomDialog()
                      );
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
