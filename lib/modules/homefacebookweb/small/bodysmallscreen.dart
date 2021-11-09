import 'package:facebook/models/imageonline.dart';
import 'package:facebook/models/leftchats.dart';
import 'package:facebook/models/postmodel.dart';
import 'package:facebook/models/righticons.dart';
import 'package:facebook/models/story.dart';
import 'package:facebook/shared/component.dart';
import 'package:facebook/shared/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SmallHomeScreen({
  context,
  List<Post> ? posts,
  List<ImageOnline> ? imageOnline ,
  List<Story> ? stories ,
})=>
    Container(
      width: 500 ,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230,
              padding: const EdgeInsets.only(left: 15,bottom: 10,top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BuildMyStory(
                        width: 110,
                        height: 190,
                        padding: 100,
                        fontsize: 12,
                        heightStack: 140
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 180,
                      child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => BuildStory(
                            height: 190,
                            width:110,
                              story: stories![index]
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            width: 5.0,
                          ),
                          itemCount: 10),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 8,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-1/p160x160/137634215_3398668370244138_1262290656466905589_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=7206a8&_nc_ohc=Lq3Fhp0Ll8cAX_moGI5&_nc_ht=scontent-hbe1-1.xx&oh=44928aaf2a434bfa083ebb63492f08a0&oe=6166F03D'),
                          radius: 23,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Container(
                            height: 42,
                            child: TextField(
                              readOnly: true,
                              enabled: false,
                              decoration: InputDecoration(
                                focusColor: Colors.grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                labelText: '   What’s on your mind ,Abanob?',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                    fontSize: 15
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 1,
                    color: Colors.grey[200],
                  ),
                  Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BuildMaterialButton(
                            icon: Icons.switch_video,
                            color: Colors.red,
                            title: ' Live video',
                            titleColor: Colors.grey[700],
                            fontWeight: FontWeight.bold
                        ),
                        BuildMaterialButton(
                            icon: Icons.photo_library,
                            color: Colors.green,
                            title: ' Photo/Video',
                            titleColor: Colors.grey[700],
                            fontWeight: FontWeight.bold
                        ),
                        BuildMaterialButton(
                            icon: Icons.tag_faces,
                            color: Colors.yellow,
                            title: ' Feeling/Activity',
                            titleColor: Colors.grey[700],
                            fontWeight: FontWeight.bold
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 8,
              child: Container(
                height: 100,
                padding: const EdgeInsets.only(left: 15,bottom: 10,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          MaterialButton(
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                side: BorderSide(color : Colors.blueAccent)
                            ),
                            height: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.video_call,
                                    color:Colors.deepPurple,
                                  ),
                                  Text(
                                    'Create Room',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[800],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            child: ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                  width: 40,
                                  child: Column(
                                    children: [
                                      BuildChats(
                                        urlImage: imageOnline![index].urlImage
                                      ),
                                    ],
                                  ),
                                ),
                                separatorBuilder: (context, index) => SizedBox(
                                  width: 5,
                                ),
                                itemCount: datImageOnlines.length),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemBuilder: (context,index)=>Card(
                color: Colors.white,
                elevation: 8,
                child: BuildPosts(posts![index],context,500),
              ),
              itemCount: dataPosts.length,

            )
          ],
        ),
      ),
    );