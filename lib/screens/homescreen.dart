// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/user_model.dart';
import 'package:whatsapp_clone/screens/chat_home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [
    User(
        name: 'Narendra Modi',
        message: 'Mere pyari desh vasiyo',
        time: '10:50',
        pfpurl: 'https://wallpapercave.com/wp/wp6727826.jpg'),
    User(
        name: 'Sachin Tendulkar',
        message: 'Yeah, I will check on that',
        time: '2:20',
        pfpurl: 'https://wallpapercave.com/wp/wp3990002.jpg'),
    User(
        name: 'Salman Khan',
        message: 'The deer wwill be arriving soon',
        time: '3:30',
        pfpurl: 'https://wallpapercave.com/wp/wp4323962.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Colors.teal[900],
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
            labelColor: Colors.white,
            indicatorColor: Colors.white,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message_rounded),
          backgroundColor: Colors.teal[900],
        ),
        body: TabBarView(
          children: <Widget>[
            Text('This feature will be available soon!'),
            ChatHome(chatTiles: users),
            Text('Soon'),
            Text('Soon'),
          ],
        ),
      ),
    );
  }
}