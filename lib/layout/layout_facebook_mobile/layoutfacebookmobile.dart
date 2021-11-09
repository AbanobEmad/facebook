import 'package:facebook/modules/homefacebookmobile/homefacebookmobile.dart';
import 'package:facebook/shared/component.dart';
import 'package:flutter/material.dart';

class LayoutFacebookMobile extends StatelessWidget {
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: new Scaffold(
        body: new NestedScrollView(
            controller : controller,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                elevation : 4,
                shape: Border(bottom: BorderSide(color: Colors.black87, width: 1)),
                title: Text("facebook",style :
                TextStyle(
                    color: Colors.blue[800],
                    fontSize: 30,
                  fontWeight: FontWeight.bold
                )),

                actions: [
                  CircleAvatar(
                    backgroundColor : Colors.grey[300],
                    radius : 20 ,
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 32,
                      ), onPressed: () {  },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor : Colors.grey[300],
                    radius : 20 ,
                    child: IconButton(
                      icon: Icon(
                        Icons.message,
                        color: Colors.black,
                        size: 25,
                      ), onPressed: () {  },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  )

                ],
                floating: true,
                pinned: true,
                snap: true,
                bottom: new TabBar(
                  unselectedLabelColor : Colors.black87,
                  labelColor : Colors.blue[800],
                  tabs: <Tab>[
                    new Tab(icon: Icon(Icons.home),),
                    new Tab(icon: Icon(Icons.group_work),),
                    new Tab(icon: Icon(Icons.ondemand_video),),
                    new Tab(icon: Icon(Icons.notifications),),
                    new Tab(icon: Icon(Icons.menu),),
                  ],
                  onTap: (index)
                  {
                    print(index);
                  },// <-- total of 2 tabs
                ),
              ),

            ];
          },
          body: new TabBarView(
            children: <Widget>[

              HomeFacebookMobileScreen(),
              Center(
                  child: Text(
                    'Group',
                    style: TextStyle(fontSize: 30),
                  )),
              Center(
                  child: Text(
                    'Video',
                    style: TextStyle(fontSize: 30),
                  )),
              Center(
                  child: Text(
                    'notifications',
                    style: TextStyle(fontSize: 30),
                  )),
              Center(
                  child: Text(
                    'Menu',
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}