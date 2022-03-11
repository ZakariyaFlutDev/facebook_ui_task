import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade700,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.black,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.grey.shade400,
                )),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 120,
              padding: EdgeInsets.only(right: 10, left: 10, top: 10),
              color: Colors.black,
              child: Column(
                children: [
                  //#image #search
                  Expanded(
                      child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/user_2.jpeg"))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "What's on your mind ?",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.video_call,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Live",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 14, bottom: 14),
                            color: Colors.grey,
                            width: 1,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.image,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Photo",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 14, bottom: 14),
                            color: Colors.grey,
                            width: 1,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Check in",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 220,
              color: Colors.black,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  makeItem(
                      userImage: "assets/images/user_4.jpeg",
                      storyImage: "assets/images/story_1.jpeg",
                      userText: "User Four"),
                  makeItem(
                      userImage: "assets/images/user_1.jpeg",
                      storyImage: "assets/images/story_5.jpeg",
                      userText: "User One"),
                  makeItem(
                      userImage: "assets/images/user_2.jpeg",
                      storyImage: "assets/images/story_4.jpeg",
                      userText: "User Two"),
                  makeItem(
                      userImage: "assets/images/user_3.jpeg",
                      storyImage: "assets/images/story_2.jpeg",
                      userText: "User Three"),
                  makeItem(
                      userImage: "assets/images/user_5.jpeg",
                      storyImage: "assets/images/story_3.jpeg",
                      userText: "User Five"),
                  makeItem(
                      userImage: "assets/images/user_4.jpeg",
                      storyImage: "assets/images/story_1.jpeg",
                      userText: "User Four"),
                  makeItem(
                      userImage: "assets/images/user_1.jpeg",
                      storyImage: "assets/images/story_5.jpeg",
                      userText: "User One"),
                  makeItem(
                      userImage: "assets/images/user_2.jpeg",
                      storyImage: "assets/images/story_4.jpeg",
                      userText: "User Two"),
                  makeItem(
                      userImage: "assets/images/user_3.jpeg",
                      storyImage: "assets/images/story_2.jpeg",
                      userText: "User Three"),
                  makeItem(
                      userImage: "assets/images/user_5.jpeg",
                      storyImage: "assets/images/story_3.jpeg",
                      userText: "User Five"),
                ],
              ),
            ),

            makeFeed(
                userImage: "assets/images/user_5.jpeg",
                userText: "User Five",
                feedTime: "1 hr ago",
                feedText:
                    "Lorem ipsum dolor text colors feed weat cool kept xazds MediaQuery.of(context) size width",
                feedImage1: "assets/images/feed_1.jpeg",
                feedImage2: "assets/images/feed_2.jpeg"
            ),
            makeFeed(
                userImage: "assets/images/user_4.jpeg",
                userText: "User Four",
                feedTime: "2 hr ago",
                feedText:
                "Lorem ipsum dolor text colors feed weat cool kept xazds MediaQuery.of(context) size width",
                feedImage1: "assets/images/feed_3.jpeg",
                feedImage2: "assets/images/feed_5.jpeg"
            ),
            makeFeed(
                userImage: "assets/images/user_3.jpeg",
                userText: "User Four",
                feedTime: "2 hr ago",
                feedText:
                "Lorem ipsum dolor text colors feed weat cool kept xazds MediaQuery.of(context) size width",
                feedImage1: "assets/images/feed_2.jpeg",
                feedImage2: "assets/images/feed_1.jpeg"
            ),
            makeFeed(
                userImage: "assets/images/user_2.jpeg",
                userText: "User Four",
                feedTime: "2 hr ago",
                feedText:
                "Lorem ipsum dolor text colors feed weat cool kept xazds MediaQuery.of(context) size width",
                feedImage1: "assets/images/feed_4.jpeg",
                feedImage2: "assets/images/feed_2.jpeg"
            ),
            makeFeed(
                userImage: "assets/images/user_4.jpeg",
                userText: "User Four",
                feedTime: "2 hr ago",
                feedText:
                "Lorem ipsum dolor text colors feed weat cool kept xazds MediaQuery.of(context) size width",
                feedImage1: "assets/images/feed_3.jpeg",
                feedImage2: "assets/images/feed_5.jpeg"
            ),
          ],
        ));
  }

  makeFeed({userImage, userText, feedTime, feedText, feedImage1, feedImage2}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        children: [
          //#header
          Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(userImage),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userText,
                                style: TextStyle(
                                    color: Colors.grey.shade500, fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                feedTime,
                                style: TextStyle(
                                    color: Colors.grey.shade500, fontSize: 15),
                              )
                            ],
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.grey.shade500,
                            size: 30,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    feedText,
                    style: TextStyle(
                        color: Colors.grey.shade500, fontSize: 15, height: 1.5),
                  )
                ],
              )),
          SizedBox(
            height: 10,
          ),

          //#photo
          Container(
            height: 240,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(feedImage1), fit: BoxFit.cover)),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(feedImage2), fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),

          //#likes
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(offset: Offset(-5,0), child: makeLove(),),
                    Text("1.3 K", style: TextStyle(color: Colors.grey, fontSize: 15),),
                  ],
                ),
                Text("324 Comments", style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton()
            ],
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}

Widget makeLikeButton({isActive}){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    child: Center(
      child: Row(
        children: [
          Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey,),
          Text("Like", style: TextStyle(color: isActive ? Colors.blue: Colors.grey),)
        ],
      ),
    ),
  );
}

Widget makeCommentButton(){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    child: Center(
      child: Row(
        children: [
          Icon(Icons.chat, color:  Colors.grey,),
          Text("Comment", style: TextStyle(color: Colors.grey),)
        ],
      ),
    ),
  );
}

Widget makeShareButton(){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    child: Center(
      child: Row(
        children: [
          Icon(Icons.share, color:  Colors.grey,),
          Text("Share", style: TextStyle(color: Colors.grey),)
        ],
      ),
    ),
  );
}

Widget makeLike(){
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.blue,
      border: Border.all(color: Colors.white)
    ),
    child: Center(
      child: Icon(Icons.thumb_up, color: Colors.white, size: 12,),
    ),
  );
}

Widget makeLove(){
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        border: Border.all(color: Colors.white)
    ),
    child: Center(
      child: Icon(Icons.favorite, color: Colors.white,size: 12,),
    ),
  );
}

Widget makeItem({userImage, storyImage, userText}) {
  return AspectRatio(
    aspectRatio: 1.2 / 2,
    child: Container(
      margin: EdgeInsets.only(top: 10, right: 10,),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(storyImage), fit: BoxFit.cover)),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.1),
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(userImage), fit: BoxFit.cover),
                  border: Border.all(width: 2, color: Colors.blue)),
            ),
            Text(
              userText,
              style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
            )
          ],
        ),
      ),
    ),
  );
}
