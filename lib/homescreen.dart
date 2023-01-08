import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'registrationscreen.dart';
import 'user.dart';


class Homescreen extends StatefulWidget {
  final User user;
  const Homescreen({super.key, required this.user});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Homestay Raya")),
        body:
        Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/images/login.jpg'),
          fit: BoxFit.cover),
          ),
          child:
          const Center(
            child: Text("Your Future Places",
            style: TextStyle(
              fontFamily: 'Courgette',
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          )
         ),
        
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: const Text('Faris@gmail.com',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                accountName: Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: const CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.person,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text('Faris123',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                  ],
                ),
                //child: Text('Profile'),
              ),
              ListTile(
                shape:  RoundedRectangleBorder(
                  side: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(36),),
                title: const Text('Register'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (content) => const RegistrationScreen()));
                },
              ),
              const SizedBox(
              height: 8,
            ),
              ListTile(
                shape:  RoundedRectangleBorder(
                  side: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(36),),
                title: const Text('Login'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (content) => const LoginScreen()));
                },
              ),
            ],
          ),
        ));
  }
}