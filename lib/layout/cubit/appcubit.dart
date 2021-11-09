import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:facebook/layout/cubit/appstatus.dart';
import 'package:facebook/models/imageonline.dart';
import 'package:facebook/models/leftchats.dart';
import 'package:facebook/models/postmodel.dart';
import 'package:facebook/models/righticons.dart';
import 'package:facebook/models/story.dart';
import 'package:facebook/shared/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super(AppInitialStates());

  static AppCubit get(context)=>BlocProvider.of(context);


  List<Post> localPosts=[];

  List<ImageOnline> localImageOnline=[];

  List<LeftChats> localLeftChats=[];

  List<RightIcon> localRightIcons=[];

  List<Story> localStories=[];

  void GetData()
  {
    emit(AppLoadingStates());
    Timer(const Duration(seconds: 2), () {
      localPosts = dataPosts;
      localImageOnline = datImageOnlines;
      localLeftChats = dataLeftchats;
      localRightIcons = dataRighticons ;
      localStories = datStories;
      emit(AppGetDataStates());
    });
  }

}