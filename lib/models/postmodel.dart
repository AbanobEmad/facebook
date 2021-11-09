
import 'package:flutter/cupertino.dart';

enum Likes {Like,Live,Angry,Haha,Wow}

class Post {
  final String ? postText;
  final String ? date;
  final String ? user;
  final String ? linkImageUser;
  final List<String> ? linkImages;
  final Map<Likes,int> ? likes;
  final String ? textDecoration;

  Post({this.user,this.date,this.likes,this.linkImages,this.linkImageUser,this.postText,this.textDecoration});
}