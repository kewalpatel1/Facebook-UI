import 'package:flutter/material.dart';
class Rooms extends StatefulWidget {
  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child:Column(
        children: [
          Container(
            color: Colors.white,
            child:Row(
              children: [
                SizedBox(width: 10.0,),
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage:  NetworkImage("https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bW9kZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                ),
                SizedBox(width: 13.0,),
                Expanded(child:TextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText:"What's on your mind?",
                  ),
                ),
                ),
              ],
            ),
          ),

          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  onPressed:() {},
                  icon:Icon(Icons.videocam,color: Colors.redAccent,),
                  label:Text('Live'),
                ),
                VerticalDivider(width:8,),
                FlatButton.icon(
                  onPressed:() {},
                  icon:Icon(
                    Icons.photo_library_outlined,
                    color: Colors.green,
                  ),
                  label:Text('Photo'),
                ),
                VerticalDivider(width:8,),
                FlatButton.icon(
                  onPressed:() {},
                  icon:Icon(Icons.video_call_outlined,  color: Colors.purple,),
                  label:Text('Room'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
