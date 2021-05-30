import 'file:///C:/Users/kewalpatel/AndroidStudioProjects/facebook/lib/info/info.dart';
import 'package:flutter/material.dart';
class AddStory extends StatefulWidget {
  @override
  _AddStoryState createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding:EdgeInsets.symmetric(vertical:1),
      sliver: SliverToBoxAdapter(
        child:Container(
          height: 220.0,
          color: Colors.white,
          child: ListView.builder(
              itemCount:stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                if(index == 0) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:10,horizontal: 5),
                        child: Container(
                          width:130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image:DecorationImage(
                              image:NetworkImage("https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bW9kZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                              fit:BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:15,top: 20),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                              onTap: () { print("add story");                             },
                              child: Icon(Icons.add,color: Colors.blue[600],size: 30,)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0,10.0,0.0,20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Add to Story',
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
                final Story user = stories[index];
                final User user2 = onlineUsers[index];
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:10,horizontal: 5),
                      child: Container(
                        width:130,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          image:DecorationImage(
                            image: NetworkImage(user.imageUrl),
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15,top: 20),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border:Border.all(
                            color: Colors.blue[600],
                            width: 2,
                          ),
                          shape:BoxShape.circle,
                          image:DecorationImage(
                            image: NetworkImage(user2.imageUrl),
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0,10.0,0.0,20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            user2.name,
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
          ),
        ),
      ),
    );
  }
}
