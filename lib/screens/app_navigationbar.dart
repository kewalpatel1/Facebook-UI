import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppNav extends StatefulWidget {
  @override
  _AppNavState createState() => _AppNavState();
}

class _AppNavState extends State<AppNav> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 20.0,
      floating: false,
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      title:Text(
          "facebook",
          style:GoogleFonts.roboto(
            textStyle: TextStyle(
              color:Color(0xFF1777F2),
              fontSize:29.0,
              letterSpacing:0.3,
              fontWeight: FontWeight.bold,
              //fontWeight:FontWeight.normal,
            ),
          )
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            shape:BoxShape.circle,
          ),
          child: IconButton(
            icon:Icon(Icons.search),
            color: Colors.black,
            iconSize:30.0,
            onPressed: () {},
          ),
        ),
        SizedBox(width: 20.0,),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            shape:BoxShape.circle,
          ),
          child: IconButton(
            icon:Icon(Icons.message),
            color: Colors.black54,
            iconSize:25.0,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
