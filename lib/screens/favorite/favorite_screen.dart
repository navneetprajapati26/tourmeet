import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    String img1 =
        "https://justifiedgrid.com/wp-content/uploads/life/biking/137646854.jpg";
    String img2 =
        "https://images.unsplash.com/photo-1606893995103-a431bce9c219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBob3RvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
    String img3 =
        "https://plus.unsplash.com/premium_photo-1664701475272-953393050754?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";

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
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text("favorite_screen",style: TextStyle(
        //         fontSize: 35,
        //         color: Colors.indigo,
        //         fontWeight: FontWeight.bold),),
        //     Text("Work in Progress ",style: TextStyle(
        //         fontSize: 25,
        //         color: Colors.indigo,
        //         fontWeight: FontWeight.bold),),
        //   ],
        // ),
        child: StoryView(
          storyItems: [
            // StoryItem.inlineImage(controller: controller, url: "https://image.ibb.co/gCZFbx/Banku-and-tilapia.jpg"),
            // StoryItem.inlineImage(controller: controller, url: img2,),
            // StoryItem.inlineImage(controller: controller, url: img3)

            // StoryItem.text(
            //   title:
            //   "Hello world!\nHave a look at some great Ghanaian delicacies. I'm sorry if your mouth waters. \n\nTap!",
            //   backgroundColor: Colors.orange,
            //   roundedTop: true,
            // ),

            StoryItem.inlineImage(
              url:
                  "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
              controller: controller,
              caption: Text(
                "Omotuo & Nkatekwan; You will love this meal if taken as supper.",
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.black54,
                  fontSize: 17,
                ),
              ),
            ),
            StoryItem.inlineImage(
              url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
              controller: controller,
              caption: Text(
                "Hektas, sektas and skatad",
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.black54,
                  fontSize: 17,
                ),
              ),
            )
          ],
          controller: controller,
        ),
      ),
    );
  }
}
