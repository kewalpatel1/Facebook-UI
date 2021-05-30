import 'file:///C:/Users/kewalpatel/AndroidStudioProjects/facebook/lib/info/info.dart';
import 'package:flutter/material.dart';

class ViewStory extends StatefulWidget {
  @override
  _ViewStoryState createState() => _ViewStoryState();
}

class _ViewStoryState extends State<ViewStory> {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding:EdgeInsets.symmetric(vertical: 10.0),
      sliver: SliverToBoxAdapter(
        child: Container(
          color: Colors.white,
          height: 60.0,
          child:ListView.builder(
            scrollDirection:Axis.horizontal,
            itemCount:onlineUsers.length,
            itemBuilder: (BuildContext context, int index) {
              if(index == 0){
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: FlatButton.icon(
                    icon: Icon(Icons.video_call,size: 35.0, color: Colors.purpleAccent,),
                    colorBrightness:Brightness.light,
                    color: Colors.white,
                    padding: EdgeInsets.fromLTRB(25.0,5.0,20.0,5.0),
                    shape:RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueAccent,width:2.3,),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    onPressed:() {},
                    label: Text(
                      ' Create\n'
                          ' Room',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                );
              }
              final User user = onlineUsers[index];
              return Padding(
                padding: EdgeInsets.all(5),
                child:Stack(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(user.imageUrl),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:35,bottom:3,right:4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 15.0,
                            width: 15.0,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape:BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          ),
                          //  VerticalDivider(width:12,),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
