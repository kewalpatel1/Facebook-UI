import 'file:///C:/Users/kewalpatel/AndroidStudioProjects/facebook/lib/info/info.dart';
import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate:SliverChildBuilderDelegate(
            (context,index) {
          final Post post = posts[index];
          final Story user = stories[index];
          final User user2 = onlineUsers[index];
          if(index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: ListTile(
                        leading:  CircleAvatar(
                          radius: 20.0,
                          backgroundImage:  NetworkImage("https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bW9kZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        ),
                        title: Text('Kewal P',style: TextStyle(color: Colors.black,fontSize:18),),
                        subtitle:Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('58m'),
                            SizedBox(width: 5,),
                            Text('.',style: TextStyle(color: Colors.black,fontSize:20),),
                            SizedBox(width: 5,),
                            Icon(Icons.public,size:18,)
                          ],
                        ),
                        trailing:Icon(Icons.more_horiz_outlined,color: Colors.black,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:16),
                      child: Text('Check out this cute puppy',style: TextStyle(fontSize:16),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height:300,
                      decoration: BoxDecoration(
                        image:DecorationImage(
                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0HhopwdLMTVroluSxVq-rC_61i24dpQu1zg&usqp=CAU'),
                          fit:BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: ClipOval(
                            child: Material(
                              color:Colors.blue,
                              child: InkWell(
                                splashColor: Colors.white, // inkwell color
                                child: SizedBox(width:22, height:22, child: Icon(Icons.thumb_up,color: Colors.white,size:15,)),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                        Text('25403'),
                        SizedBox(width: 125,),
                        Text('227 comments  '),
                        Text('20 shares'),
                      ],
                    ),
                    Divider(height: 8,),
                    Row(
                      children: [
                        SizedBox(width:30,),
                        FlatButton.icon(
                          onPressed:() {},
                          icon:Icon(Icons.thumb_up_alt_outlined,color: Colors.black54,),
                          label:Text('Like'),
                        ),
                        VerticalDivider(width:8,),
                        FlatButton.icon(
                          onPressed:() {},
                          icon:Icon(
                            Icons.mode_comment_outlined,
                            color: Colors.black54,
                          ),
                          label:Text('Comment'),
                        ),
                        VerticalDivider(width:8,),
                        FlatButton.icon(
                          onPressed:() {},
                          icon:Icon(Icons.send,  color: Colors.black54,),
                          label:Text('Share'),
                        ),
                      ],
                    ),

                    Divider(thickness: 8,color: Colors.grey[200],),
                  ],
                ),
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: ListTile(
                      leading:CircleAvatar(
                        radius: 20.0,
                        backgroundImage:NetworkImage(user.imageUrl),
                      ),
                      title: Text('${user2.name}',style: TextStyle(color: Colors.black,fontSize:18),),
                      subtitle:Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(post.timeAgo),
                          SizedBox(width: 5,),
                          Text('.',style: TextStyle(color: Colors.black,fontSize:20),),
                          SizedBox(width: 5,),
                          Icon(Icons.public,size:18,)
                        ],
                      ),
                      trailing:Icon(Icons.more_horiz_outlined,color: Colors.black,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:16),
                    child: Text(post.caption,style: TextStyle(fontSize:16),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height:300,
                    decoration: BoxDecoration(
                      image:DecorationImage(
                        image: NetworkImage(post.imageUrl),
                        fit:BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                        child: ClipOval(
                          child: Material(
                            color:Colors.blue,
                            child: InkWell(
                              splashColor: Colors.white, // inkwell color
                              child: SizedBox(width:22, height:22, child: Icon(Icons.thumb_up,color: Colors.white,size:15,)),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ),
                      Text('${post.likes}'),
                      SizedBox(width: 140,),
                      Text('${post.comments} comments'),
                      SizedBox(width: 5,),
                      Text('${post.shares} shares'),

                    ],
                  ),
                  Divider(height: 8,),
                  Row(
                    children: [
                      SizedBox(width:30,),
                      FlatButton.icon(
                        onPressed:() {},
                        icon:Icon(Icons.thumb_up_alt_outlined,color: Colors.black54,),
                        label:Text('Like'),
                      ),
                      VerticalDivider(width:8,),
                      FlatButton.icon(
                        onPressed:() {},
                        icon:Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.black54,
                        ),
                        label:Text('Comment'),
                      ),
                      VerticalDivider(width:8,),
                      FlatButton.icon(
                        onPressed:() {},
                        icon:Icon(Icons.send,  color: Colors.black54,),
                        label:Text('Share'),
                      ),
                    ],
                  ),
                  Divider(thickness: 8,color: Colors.grey[200],),
                ],
              ),
            ),
          );
        },
        childCount:posts.length,
      ),
    );
  }
}
