import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'user.dart';

class LoginUser extends StatefulWidget {
  final User user;
  const LoginUser({super.key, required this.user});
  

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Page Homestay",)
        ),



        body: Container(
          color: Colors.white,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [ 
           
            AnimSearchBar(
              color: Colors.grey,
              width: 400,
              textController: textController,
              onSuffixTap: (){
                setState(() {
                  textController.clear();
                });
              },
              
                helpText: "Search Homestay",
                closeSearchOnSuffixTap: true,
                animationDurationInMilli: 1000,
                rtl: true,
            ),

            Image.asset('assets/images/page.jpg', 
            fit: BoxFit.cover,),
            
            
          ])
        )
       
    );
  
  }
}