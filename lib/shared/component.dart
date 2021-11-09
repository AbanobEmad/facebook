import 'package:facebook/models/leftchats.dart';
import 'package:facebook/models/postmodel.dart';
import 'package:facebook/models/righticons.dart';
import 'package:facebook/models/story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';

Widget BuildMaterialButton(
        {@required IconData? icon,
        @required Color? color,
        @required String? title,
          FontWeight ? fontWeight =FontWeight.normal,
          double ? sizefont = 14,
        Color ? titleColor = Colors.black }) => MaterialButton(
      height: 40,
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            '$title',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: titleColor,
              fontWeight: fontWeight,
              fontSize: sizefont
            ),
          ),

        ],
      ),
    );

Widget BuildMyStory({
  required double height,
  required double width ,
  required double padding,
  required double fontsize,
  required double heightStack}) => Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[100],
          border: Border.all(width: 1, color: Colors.grey)),
      child: Stack(
        children: [
          Container(
            width: 110.0,
            height: heightStack,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-1/p160x160/137634215_3398668370244138_1262290656466905589_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=7206a8&_nc_ohc=Lq3Fhp0Ll8cAX_moGI5&_nc_ht=scontent-hbe1-1.xx&oh=44928aaf2a434bfa083ebb63492f08a0&oe=6166F03D'),
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0)),
              color: Colors.redAccent,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: padding),
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: padding),
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue[800],
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Text(
                'Create story',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontsize),
              ),
            ),
          )
        ],
      ),
    );

Widget BuildStory({
  required double height,
  required double width ,
  required Story story}) => Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      '${story.urlStory}')),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Colors.redAccent,
            ),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  '${story.urlProfile}'),
              radius: 20,
            ),
          ),
          Positioned(
              bottom: 5,
              left: 5,
              right: 5,
              child: Text(
                '${story.name}',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )),
        ],
      ),
    );

Widget BuildChats({
  double radiusImage=20,
  double radiusWhite= 7.2,
  double radiusOnline= 6.0,
  String ? urlImage ='https://i.pinimg.com/originals/e5/73/d3/e573d3a06c0bc75d5d26fa8408e418e8.jpg',
  required
})=>Stack(
  alignment: AlignmentDirectional.bottomEnd,
  children: [
    CircleAvatar(
      backgroundImage: NetworkImage(
          urlImage!),
      radius: radiusImage,
    ),
    CircleAvatar(
      backgroundColor: Colors.white,
      radius: radiusWhite,
    ),
    Padding(
      padding: const EdgeInsetsDirectional.only(
          bottom: 1, end: 1),
      child: CircleAvatar(
        backgroundColor: Colors.green,
        radius: radiusOnline,
      ),
    ),
  ],
);

Widget BuildPosts(Post post,context,double width,) => Column(
  children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('${post.linkImageUser}'),
            radius: 20,
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${post.user}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Text('${post.date}.'),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          )
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
      child: ReadMoreText(
        '${post.postText}',
        trimLines: 3,
        textDirection:post.textDecoration=='E' ? TextDirection.ltr : TextDirection.rtl,
        colorClickableText: Colors.grey,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'See more',
        moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey),
        lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey),
        style: TextStyle(fontSize: 15,color: Colors.black),
      ),
    ),
    Builder(
        builder: (context)
        {
          if(post.linkImages!.length>0)
            {
              return Container(
                height: 500,
                padding: const EdgeInsets.only(top: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=>Container(
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage('${post.linkImages![index]}'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  itemCount: post.linkImages!.length,
                ),
              );
            }
          else
            return SizedBox(height: 0,);
        }
        ),
    Builder(
        builder: (context)
        {
          if(post.likes!.length>0)
          {
            int likes= 0;
            post.likes!.forEach((key, value) {
              likes+=value;
            });
            return Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                      Icons.thumb_up,
                    color: Colors.blue,
                    size: 20,
                  ),
                  Text(' $likes Likes'),
                ],
              ),
            );
          }
          else
            return Text('');
        }
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 1,
        color: Colors.grey,
      ),
    ),
    Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BuildMaterialButton(
              icon: Icons.thumb_up_outlined,
              color: Colors.grey[600],
              title: 'LiKe',
            titleColor: Colors.grey[600],
          ),
          BuildMaterialButton(
              icon: Icons.messenger_outline,
              color: Colors.grey[600],
              title: 'Comment',
            titleColor: Colors.grey[600],
          ),

          BuildMaterialButton(
              icon: Icons.share_rounded,
              color: Colors.grey[600],
              title: 'Share',
            titleColor: Colors.grey[600],
          ),
        ],
      ),
    ),
  ],
);


Widget RightIcons(RightIcon rightIcon)=>Row(
  children: [
    Icon(
      rightIcon.iconData,
      color: rightIcon.color,
      size: 30,
    ),
    SizedBox(
      width: 10,
    ),
    Text(
        '${rightIcon.title}',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15
      ),
    )
  ],
);


Widget LeftChat(LeftChats leftChats)=>Row(
  children: [
    BuildChats(
      radiusImage: 15,
      radiusWhite: 4.2,
      radiusOnline: 3,
      urlImage: leftChats.urlImage,
    ),
    SizedBox(
      width: 10,
    ),
    Text(
      '${leftChats.name}',
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
    ),
  ],
);
