import 'package:facebook/layout/cubit/appcubit.dart';
import 'package:facebook/layout/cubit/appstatus.dart';
import 'package:facebook/models/imageonline.dart';
import 'package:facebook/models/leftchats.dart';
import 'package:facebook/models/postmodel.dart';
import 'package:facebook/models/righticons.dart';
import 'package:facebook/models/story.dart';
import 'package:facebook/modules/homefacebookweb/Large/bodylargescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
    listener:(BuildContext context,AppStates state) {},
    builder:(BuildContext context,AppStates state) {
      List<Post> posts=AppCubit.get(context).localPosts;
      List<ImageOnline> imageOnlines=AppCubit.get(context).localImageOnline;
      List<Story>stories=AppCubit.get(context).localStories;
      List<RightIcon> rightIcons = AppCubit.get(context).localRightIcons;
      List<LeftChats>  leftChats=AppCubit.get(context).localLeftChats;

      return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(
              leading: Row(children: [
                Icon(
                  Icons.facebook,
                  color: Colors.blue,
                  size: 50,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 20,
                ),
              ]),
              title: Container(
                  width: 500,
                  child: TabBar(
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.blue[800],
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.home,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.video_settings_rounded,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.supervised_user_circle,
                        ),
                      ),

                      Tab(
                        icon: Icon(
                          Icons.dashboard,
                        ),
                      ),
                    ],
                  )),
              centerTitle: true,
              actions: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-1/p160x160/137634215_3398668370244138_1262290656466905589_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=7206a8&_nc_ohc=Lq3Fhp0Ll8cAX_moGI5&_nc_ht=scontent-hbe1-1.xx&oh=44928aaf2a434bfa083ebb63492f08a0&oe=6166F03D'),
                      radius: 15,
                    ),
                    Text(
                      ' Abanob',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 20,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.apps_sharp,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 20,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.messenger_outline,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 20,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.notifications,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 20,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            body: TabBarView(children: <Widget>[
              LargeHomeScreen(
                context: context,
                imageOnline: imageOnlines,
                leftChats: leftChats,
                posts: posts,
                rightIcons: rightIcons,
                stories: stories
              ),
              Center(
                child: Text("It's rainy here"),
              ),
              Center(
                child: Text("It's sunny here"),
              ),
              Center(
                child: Text("It's sunny here"),
              ),
            ])),
      );
    }
    );
  }
}
