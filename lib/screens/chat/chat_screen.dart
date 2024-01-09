import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/chatting/chat/message.dart';
import 'package:flutter_application_1/chatting/chat/new_message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _authentication = FirebaseAuth.instance;
  User? loggedUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUSer();
  }

  void getCurrentUSer() {
    try {
      final user = _authentication.currentUser;
      if (user != null) {
        loggedUser = user;
        print(loggedUser!.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat screen'),
          backgroundColor: Colors.amber,
          actions: [
            IconButton(
                onPressed: () async {
                  try {
                    await _authentication.signOut();
                  } catch (error) {
                    print(error);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('sorry retry please.'),
                      backgroundColor: Colors.blue,
                    ));
                  }
                },
                icon: Icon(
                  Icons.exit_to_app_sharp,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Messages(),
              ),
              NewMessage(),
            ],
          ),
        ));
  }
}
