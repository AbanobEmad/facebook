import 'package:facebook/models/imageonline.dart';
import 'package:facebook/models/leftchats.dart';
import 'package:facebook/models/postmodel.dart';
import 'package:facebook/models/righticons.dart';
import 'package:facebook/models/story.dart';
import 'package:flutter/material.dart';

List<Post> dataPosts =[
  Post(
    textDecoration: 'E',
    date: '2d',
    likes: {
      Likes.Like : 3,
      Likes.Angry : 2,
      Likes.Wow : 10,
      Likes.Live : 20,
    },
    user: 'Abanob Emad',
    linkImageUser: 'https://i2.wp.com/homefreshideas.com/wp-content/uploads/2020/06/IMG_9020-1-scaled.jpg',
    linkImages: [
      'https://i0.wp.com/footballng.com/wp-content/uploads/2021/02/Salah-Vows-Liverpool-Will-Bounce-Back-After-Leicester-Setback.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzXeMLmAMG6xgUAli6R0YttHKtT7otgcYTVw&usqp=CAU',
    ],
    postText: 'How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you'
  ),
  Post(
      textDecoration: 'E',
      date: '3d',
      likes: {
        Likes.Like : 3,
        Likes.Angry : 2,
        Likes.Wow : 10,
        Likes.Live : 20,
      },
      user: 'Amer Atfe',
      linkImageUser: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzXeMLmAMG6xgUAli6R0YttHKtT7otgcYTVw&usqp=CAU',
      linkImages: [
        'https://image.shutterstock.com/image-photo/purple-mexican-petunia-beautiful-blooming-600w-2023308002.jpg'
      ],
      postText: 'How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you'
  ),
  Post(
      textDecoration: 'E',
      date: '2d',
      likes:{},
      user: 'Karem Ali',
      linkImageUser: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg',
      linkImages: [
        'https://images.agromassidayu.com/img/novosti-i-obshestvo/28/quotmolochnie-cvetiquot-chto-eto-znachit-chto-svyazivaet-podsnezhniki-chaj-muskat-i-sir.jpg'
      ],
      postText: 'How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you'
  ),
  Post(
      textDecoration: 'A',
      date: '2d',
      likes: {
        Likes.Like : 3,
        Likes.Angry : 2,
        Likes.Wow : 10,
        Likes.Live : 20,
      },
      user: 'Abanob Hailem',
      linkImageUser: 'https://thumbs.dreamstime.com/b/spring-flowers-blue-crocuses-drops-water-backgro-background-tracks-rain-113784722.jpg',
      linkImages: [],
      postText: 'انا بفكر كتير اكون مبرمج فلاتر كبير وناجح ولكن هذا لا ياتى اللى بالعمل الجاد انا بفكر كتير اكون مبرمج فلاتر كبير وناجح ولكن هذا لا ياتى اللى بالعمل الجاد'
  ),
  Post(
      textDecoration: 'E',
      date: '2d',
      likes: {
        Likes.Like : 3,
        Likes.Angry : 2,
        Likes.Wow : 10,
        Likes.Live : 20,
      },
      user: 'Ali Nader',
      linkImageUser: 'https://thumbs.dreamstime.com/b/spring-flowers-blue-crocuses-drops-water-backgro-background-tracks-rain-113784722.jpg',
      linkImages: [],
      postText: 'How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you'
  ),
  Post(
      textDecoration: 'E',
      date: '2d',
      likes: {
        Likes.Like : 3,
        Likes.Angry : 2,
        Likes.Wow : 10,
        Likes.Live : 20,
      },
      user: 'Hossam Hassan',
      linkImageUser: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK62yUDbemNn9vM0PnyM29osWj6Jfwpuzp1Q&usqp=CAU',
      linkImages: [
        'https://thumbs.dreamstime.com/b/art-spring-flowers-background-frame-52852938.jpg',
        'https://thumbs.dreamstime.com/b/spring-flowers-blue-crocuses-drops-water-backgro-background-tracks-rain-113784722.jpg',
        'https://thumbs.dreamstime.com/b/mountains-flowers-blossom-sunrise-mountain-hills-beautiful-natural-landscape-summer-time-background-136448735.jpg'
      ],
      postText: 'How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you How are you'
  ),
];


List<RightIcon> dataRighticons= [
  RightIcon(
    iconData: Icons.group,
    title: 'Freinds',
    color: Colors.blue
  ),
  RightIcon(
      iconData: Icons.bookmark,
    title: 'Saved',
    color: Colors.pinkAccent,
  ),
  RightIcon(
    iconData: Icons.alarm,
    title: 'Memories',
    color: Colors.blue,
  ),
  RightIcon(
      iconData: Icons.flag,
    title: 'Pages',
    color: Colors.deepOrange,
  ),
  RightIcon(
      iconData: Icons.group_work,
    title: 'Groups',
    color: Colors.blue,
  ),
  RightIcon(
      iconData: Icons.group,
      title: 'Freinds',
      color: Colors.blue
  ),
  RightIcon(
    iconData: Icons.bookmark,
    title: 'Saved',
    color: Colors.pinkAccent,
  ),
  RightIcon(
    iconData: Icons.alarm,
    title: 'Memories',
    color: Colors.blue,
  ),
  RightIcon(
    iconData: Icons.flag,
    title: 'Pages',
    color: Colors.deepOrange,
  ),
  RightIcon(
    iconData: Icons.group_work,
    title: 'Groups',
    color: Colors.blue,
  ),
  RightIcon(
      iconData: Icons.group,
      title: 'Freinds',
      color: Colors.blue
  ),
  RightIcon(
    iconData: Icons.bookmark,
    title: 'Saved',
    color: Colors.pinkAccent,
  ),
  RightIcon(
    iconData: Icons.alarm,
    title: 'Memories',
    color: Colors.blue,
  ),
  RightIcon(
    iconData: Icons.flag,
    title: 'Pages',
    color: Colors.deepOrange,
  ),
  RightIcon(
    iconData: Icons.group_work,
    title: 'Groups',
    color: Colors.blue,
  ),
  RightIcon(
    iconData: Icons.bookmark,
    title: 'Saved',
    color: Colors.pinkAccent,
  ),
  RightIcon(
    iconData: Icons.alarm,
    title: 'Memories',
    color: Colors.blue,
  ),
  RightIcon(
    iconData: Icons.flag,
    title: 'Pages',
    color: Colors.deepOrange,
  ),
  RightIcon(
    iconData: Icons.group_work,
    title: 'Groups',
    color: Colors.blue,
  )

];



List<LeftChats> dataLeftchats=[

  LeftChats(
    name: 'Remon Atfe',
    urlImage: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg'
  ),
  LeftChats(
      name: 'Abanoub Atfe',
      urlImage: 'https://image.shutterstock.com/image-photo/purple-mexican-petunia-beautiful-blooming-600w-2023308002.jpg'
  ),
  LeftChats(
      name: 'Beboo Magdy',
      urlImage: 'https://image.shutterstock.com/image-photo/macro-image-spring-lilac-violet-600w-257548306.jpg'
  ),
  LeftChats(
      name: 'Ahmed Maher',
      urlImage: 'https://i0.wp.com/footballng.com/wp-content/uploads/2021/02/Salah-Vows-Liverpool-Will-Bounce-Back-After-Leicester-Setback.jpg'
  ),
  LeftChats(
      name: 'ابراهيم محمد',
      urlImage: 'https://staticg.sportskeeda.com/editor/2018/09/d11b5-15383045566759-800.jpg'
  ),
  LeftChats(
      name: 'Maged Maher',
      urlImage: 'https://images.unsplash.com/photo-1609741199743-341cf4ee3d02?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=282&q=80'
  ),
  LeftChats(
      name: 'Remon Atfe',
      urlImage: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg'
  ),
  LeftChats(
      name: 'Abanoub Atfe',
      urlImage: 'https://image.shutterstock.com/image-photo/purple-mexican-petunia-beautiful-blooming-600w-2023308002.jpg'
  ),
  LeftChats(
      name: 'Beboo Magdy',
      urlImage: 'https://image.shutterstock.com/image-photo/macro-image-spring-lilac-violet-600w-257548306.jpg'
  ),
  LeftChats(
      name: 'Ahmed Maher',
      urlImage: 'https://i0.wp.com/footballng.com/wp-content/uploads/2021/02/Salah-Vows-Liverpool-Will-Bounce-Back-After-Leicester-Setback.jpg'
  ),
  LeftChats(
      name: 'ابراهيم محمد',
      urlImage: 'https://staticg.sportskeeda.com/editor/2018/09/d11b5-15383045566759-800.jpg'
  ),
  LeftChats(
      name: 'Maged Maher',
      urlImage: 'https://images.unsplash.com/photo-1609741199743-341cf4ee3d02?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=282&q=80'
  ),
  LeftChats(
      name: 'Remon Atfe',
      urlImage: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg'
  ),
  LeftChats(
      name: 'Abanoub Atfe',
      urlImage: 'https://image.shutterstock.com/image-photo/purple-mexican-petunia-beautiful-blooming-600w-2023308002.jpg'
  ),
  LeftChats(
      name: 'Beboo Magdy',
      urlImage: 'https://image.shutterstock.com/image-photo/macro-image-spring-lilac-violet-600w-257548306.jpg'
  ),
  LeftChats(
      name: 'Ahmed Maher',
      urlImage: 'https://i0.wp.com/footballng.com/wp-content/uploads/2021/02/Salah-Vows-Liverpool-Will-Bounce-Back-After-Leicester-Setback.jpg'
  ),
  LeftChats(
      name: 'ابراهيم محمد',
      urlImage: 'https://staticg.sportskeeda.com/editor/2018/09/d11b5-15383045566759-800.jpg'
  ),
  LeftChats(
      name: 'Maged Maher',
      urlImage: 'https://images.unsplash.com/photo-1609741199743-341cf4ee3d02?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=282&q=80'
  ),
  LeftChats(
      name: 'Remon Atfe',
      urlImage: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg'
  ),
  LeftChats(
      name: 'Abanoub Atfe',
      urlImage: 'https://image.shutterstock.com/image-photo/purple-mexican-petunia-beautiful-blooming-600w-2023308002.jpg'
  ),
  LeftChats(
      name: 'Beboo Magdy',
      urlImage: 'https://image.shutterstock.com/image-photo/macro-image-spring-lilac-violet-600w-257548306.jpg'
  ),
  LeftChats(
      name: 'Ahmed Maher',
      urlImage: 'https://i0.wp.com/footballng.com/wp-content/uploads/2021/02/Salah-Vows-Liverpool-Will-Bounce-Back-After-Leicester-Setback.jpg'
  ),
  LeftChats(
      name: 'ابراهيم محمد',
      urlImage: 'https://staticg.sportskeeda.com/editor/2018/09/d11b5-15383045566759-800.jpg'
  ),
  LeftChats(
      name: 'Maged Maher',
      urlImage: 'https://images.unsplash.com/photo-1609741199743-341cf4ee3d02?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=282&q=80'
  )
];


List<ImageOnline> datImageOnlines=[
  ImageOnline(
    urlImage: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg'
  ),
  ImageOnline(
      urlImage: 'https://image.shutterstock.com/image-photo/macro-image-spring-lilac-violet-600w-257548306.jpg'
  ),
  ImageOnline(
      urlImage: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg'
  ),
  ImageOnline(
      urlImage: 'https://image.shutterstock.com/image-photo/macro-image-spring-lilac-violet-600w-257548306.jpg'
  ),
  ImageOnline(
      urlImage: 'https://staticg.sportskeeda.com/editor/2018/09/d11b5-15383045566759-800.jpg'
  ),
  ImageOnline(
      urlImage: 'https://staticg.sportskeeda.com/editor/2018/09/d11b5-15383045566759-800.jpg'
  ),
  ImageOnline(
      urlImage: 'https://image.cnbcfm.com/api/v1/image/104445875-1548885263261gettyimages-669913902r.jpg'
  ),
  ImageOnline(
      urlImage: 'https://image.cnbcfm.com/api/v1/image/104445875-1548885263261gettyimages-669913902r.jpg'
  ),
  ImageOnline(
      urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK62yUDbemNn9vM0PnyM29osWj6Jfwpuzp1Q&usqp=CAU'
  ),
  ImageOnline(
      urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK62yUDbemNn9vM0PnyM29osWj6Jfwpuzp1Q&usqp=CAU'
  ),
  ImageOnline(
      urlImage: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg'
  ),
  ImageOnline(
      urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzXeMLmAMG6xgUAli6R0YttHKtT7otgcYTVw&usqp=CAU'
  ),
];

List<Story> datStories=[
  Story(
    urlProfile: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg',
    urlStory: 'https://image.shutterstock.com/image-photo/macro-image-spring-lilac-violet-600w-257548306.jpg',
    name: 'Gamel Ali'
  ),
  Story(
      urlProfile: 'https://image.shutterstock.com/image-photo/macro-image-spring-lilac-violet-600w-257548306.jpg',
      urlStory: 'https://staticg.sportskeeda.com/editor/2018/09/d11b5-15383045566759-800.jpg',
      name: 'Gamel Ali'
  ),
  Story(
      urlProfile: 'https://image.cnbcfm.com/api/v1/image/104445875-1548885263261gettyimages-669913902r.jpg',
      urlStory: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg',
      name: 'Gamel Ali'
  ),
  Story(
      urlProfile: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK62yUDbemNn9vM0PnyM29osWj6Jfwpuzp1Q&usqp=CAU',
      urlStory: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg',
      name: 'Gamel Ali'
  ),
  Story(
      urlProfile: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK62yUDbemNn9vM0PnyM29osWj6Jfwpuzp1Q&usqp=CAU',
      urlStory: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg',
      name: 'Gamel Ali'
  ),
  Story(
      urlProfile: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg',
      urlStory: 'https://image.shutterstock.com/image-photo/macro-image-spring-lilac-violet-600w-257548306.jpg',
      name: 'Gamel Ali'
  ),
  Story(
      urlProfile: 'https://image.shutterstock.com/image-photo/macro-image-spring-lilac-violet-600w-257548306.jpg',
      urlStory: 'https://staticg.sportskeeda.com/editor/2018/09/d11b5-15383045566759-800.jpg',
      name: 'Gamel Ali'
  ),
  Story(
      urlProfile: 'https://image.cnbcfm.com/api/v1/image/104445875-1548885263261gettyimages-669913902r.jpg',
      urlStory: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg',
      name: 'Gamel Ali'
  ),
  Story(
      urlProfile: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK62yUDbemNn9vM0PnyM29osWj6Jfwpuzp1Q&usqp=CAU',
      urlStory: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg',
      name: 'Gamel Ali'
  ),
  Story(
      urlProfile: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK62yUDbemNn9vM0PnyM29osWj6Jfwpuzp1Q&usqp=CAU',
      urlStory: 'https://cdn.pixabay.com/photo/2013/07/02/22/20/bouquet-142876_640.jpg',
      name: 'Gamel Ali'
  ),
];
