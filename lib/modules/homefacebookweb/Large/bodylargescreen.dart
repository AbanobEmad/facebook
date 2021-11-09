import 'package:facebook/models/imageonline.dart';
import 'package:facebook/models/leftchats.dart';
import 'package:facebook/models/postmodel.dart';
import 'package:facebook/models/righticons.dart';
import 'package:facebook/models/story.dart';
import 'package:facebook/shared/component.dart';
import 'package:facebook/shared/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget LargeHomeScreen({
  context,
  List<Post> ? posts,
  List<ImageOnline> ? imageOnline ,
  List<Story> ? stories ,
  List<RightIcon> ? rightIcons,
  List<LeftChats> ? leftChats,

})=>
    Row(
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-1/p160x160/137634215_3398668370244138_1262290656466905589_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=7206a8&_nc_ohc=Lq3Fhp0Ll8cAX_moGI5&_nc_ht=scontent-hbe1-1.xx&oh=44928aaf2a434bfa083ebb63492f08a0&oe=6166F03D'),
                        radius: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Abanob Emad',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context,index)=>SizedBox(height: 15,),
                    itemBuilder: (context,index)=>RightIcons(rightIcons![index]),
                    itemCount: dataRighticons.length,
                  )
                ],
              ),

            ),
          ),
        ),
        Expanded( flex : 1,child: SizedBox()),
        Container(
          width: 600 ,
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
                                width: 110,
                                  story: datStories[index]
                              ),
                              separatorBuilder: (context, index) => SizedBox(
                                width: 5.0,
                              ),
                              itemCount: stories!.length),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Card(
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Card(
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
                                                urlImage: datImageOnlines[index].urlImage
                                            ),
                                          ],
                                        ),
                                      ),
                                      separatorBuilder: (context, index) => SizedBox(
                                        width: 5,
                                      ),
                                      itemCount: imageOnline!.length),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context,index)=>Card(
                      color: Colors.white,
                        elevation: 8,
                        child: BuildPosts(posts![index],context,500),
                    ),
                    itemCount: dataPosts.length,

                  ),
                )
              ],
            ),
          ),
        ),
        Expanded( flex : 1,child: SizedBox()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Contacts',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            color: Colors.black54
                          ),
                        ),
                      ),
                      Icon(
                        Icons.video_call,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 10,),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context,index)=>SizedBox(height: 15,),
                    itemBuilder: (context,index)=>LeftChat(leftChats![index]),
                    itemCount: dataLeftchats.length,
                  )
                ],
              ),

            ),
          ),
        ),
      ],
    );