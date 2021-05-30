
import 'file:///C:/Users/kewalpatel/AndroidStudioProjects/facebook/lib/screens/add_to_story.dart';
import 'file:///C:/Users/kewalpatel/AndroidStudioProjects/facebook/lib/screens/app_navigationbar.dart';
import 'file:///C:/Users/kewalpatel/AndroidStudioProjects/facebook/lib/screens/posts.dart';
import 'file:///C:/Users/kewalpatel/AndroidStudioProjects/facebook/lib/screens/room.dart';
import 'file:///C:/Users/kewalpatel/AndroidStudioProjects/facebook/lib/screens/view_story.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body:CustomScrollView(
        slivers:[
          AppNav(),
          Rooms(),
          ViewStory(),
          AddStory(),
          Posts(),
        ],
      ),
    );
  }
}
