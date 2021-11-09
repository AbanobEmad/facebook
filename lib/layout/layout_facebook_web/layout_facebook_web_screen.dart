import 'package:facebook/layout/cubit/appcubit.dart';
import 'package:facebook/layout/cubit/appstatus.dart';
import 'package:facebook/modules/homefacebookweb/mid/midsreen.dart';
import 'package:facebook/modules/homefacebookweb/small/smallscreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../modules/homefacebookweb/Large/largescreen.dart';
import 'package:flutter/material.dart';
import 'package:conditional_builder/conditional_builder.dart';

class LayoutFacebookWebScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AppCubit()..GetData(),
      child: BlocConsumer<AppCubit,AppStates>(
          listener:(BuildContext context,AppStates state) {},
        builder:(BuildContext context,AppStates state) {
            return  ConditionalBuilder(
                condition: state is AppGetDataStates ,
                builder: (BuildContext context)=>LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints){
                      if (MediaQuery.of(context).size.width >= 1100)
                        return LargeScreen();
                      else if (MediaQuery.of(context).size.width >= 900 && MediaQuery.of(context).size.width <= 1100)
                        return MidScreen();
                      return SmallScreen();
                    }
                ),
              fallback: (context)=>Center(child: CircularProgressIndicator()),
            );
          }

      ),
    );
  }
}
