import 'package:facebook/layout/cubit/appcubit.dart';
import 'package:facebook/layout/cubit/appstatus.dart';
import 'package:facebook/models/imageonline.dart';
import 'package:facebook/models/postmodel.dart';
import 'package:facebook/models/story.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:facebook/shared/component.dart';
import 'package:facebook/shared/data.dart';
import 'package:flutter/material.dart';
import 'package:conditional_builder/conditional_builder.dart';

class HomeFacebookMobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AppCubit()..GetData(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context,  state) {
          List<Post> posts=AppCubit.get(context).localPosts;
          List<ImageOnline> imageOnline=AppCubit.get(context).localImageOnline;
          List<Story>stories=AppCubit.get(context).localStories;

          return ConditionalBuilder(
            condition: state is AppGetDataStates ,
            builder: (BuildContext context)=>SingleChildScrollView(
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

                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide(
                                        color: Colors.grey
                                    )

                                ),
                                labelText: '   What’s on your mind?',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
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
                    height: 1,
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 40,
                    child: Row(
                      children: [
                        Expanded(
                          child: BuildMaterialButton(
                              icon: Icons.switch_video,
                              color: Colors.red,
                              title: 'Live'
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 20,
                          color: Colors.grey[300],
                        ),
                        Expanded(
                          child: BuildMaterialButton(
                              icon: Icons.photo_library,
                              color: Colors.green,
                              title: 'Photo'
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 20,
                          color: Colors.grey[300],
                        ),
                        Expanded(
                          child: BuildMaterialButton(
                              icon: Icons.video_call,
                              color: Colors.deepPurple,
                              title: 'Room'
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 5,
                    color: Colors.grey[400],
                  ),
                  Container(
                    height: 100,
                    padding: const EdgeInsets.only(left: 15,bottom: 10,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Audio and video rooms',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15,
                          ),

                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              MaterialButton(
                                onPressed: (){},
                                color: Colors.blue[100]!.withOpacity(.8),
                                height: 35,
                                child: Text(
                                  'Create Room',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[800],
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
                                              urlImage: imageOnline[index].urlImage
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
                  Container(
                    height: 5,
                    color: Colors.grey[400],
                  ),
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
                              height: 200,
                              padding: 50,
                              fontsize: 14,
                              heightStack: 125
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 200,
                            child: ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => BuildStory(
                                    height: 200,
                                    width: 110,
                                    story: stories[index]
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
                  Container(
                    height: 10,
                    color: Colors.grey[400],
                  ),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context,index)=>BuildPosts(posts[index],context,MediaQuery.of(context).size.width),
                    separatorBuilder: (context,index)=>Container(
                      height: 10,
                      color: Colors.grey[400],
                    ),
                    itemCount: dataPosts.length,

                  )
                ],
              ),
            ),
            fallback: (context)=>Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}

