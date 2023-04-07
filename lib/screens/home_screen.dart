// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/constants.dart';

import '../widget/Home_body.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
      drawer: Drawer(
        child: SliderDrawer(
      key: key,
      
      appBar: SliderAppBar(
          appBarColor: Colors.white,
          title: Text('Title',
              style:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.w700))),
      slider: Container(color: Colors.red),
      child: Container(color: Colors.amber),
    ),
      ),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text(
        "اهلا وسهلا بكم في متجر ezzo",
        style: GoogleFonts.getFont("Almarai"),
      ),
      centerTitle: false,
      // actions: [
      //   IconButton(
      //     onPressed: () {},
      //     icon: Icon(Icons.menu),
      //   )
      // ],
    
    );
  }
}
