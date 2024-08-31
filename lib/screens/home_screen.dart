// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:starkbank/widget/expantion_tile_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  // ignore: prefer_const_constructors_in_immutables
  HomeScreen({
    super.key,
  });

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textController = TextEditingController();
  final _messages = <Message>[];

  void _sendMessage() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        _messages.add(Message(text: _textController.text, isMe: true));
        _textController.clear();
      });
    }
  }

  void _receiveMessage() {
    setState(() {
      _messages.add(Message(
        text: 'Hello from another person!',
        isMe: false,
      ));
    });
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          width: 400,
          height: 400,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return Align(
                      alignment: _messages[index].isMe
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color:
                              _messages[index].isMe ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          _messages[index].text,
                          style: TextStyle(
                            color: _messages[index].isMe
                                ? Colors.white
                                : Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _textController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Type a message',
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    FloatingActionButton(
                      mini: true,
                      onPressed: _sendMessage,
                      child: Icon(Icons.send),
                    ),
                    SizedBox(width: 10),
                    FloatingActionButton(
                      mini: true,
                      onPressed: _receiveMessage,
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left Side Menu
                    Container(
                      height: 900,
                      color: Color(0xffF7F9FA),
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 6),
                              child: Image(
                                image: AssetImage(
                                  'assets/logo.png',
                                ),
                                height: 60,
                              ) // Replace with your actual logo
                              ),
                          StatementTile(),
                          MembersTile(),
                          InvestmentsTile(),
                          ReceivablesTile(),
                          CorporateCardTile(),
                          IntegrationsTile(),
                          OperationsTile(),
                          PayablesTile(),
                        ],
                      ),
                    ),
                    // Right Side Content
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dashboard',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border:
                                          Border.all(color: Colors.blueAccent)),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Daily: 16/08/2024 - 15/09/2024',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 27.5),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.blue),
                                            color: Colors.blue),
                                        child: Center(
                                          child: Text(
                                            'Daily',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 80,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Montly',
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Image(
                              image: AssetImage('assets/home_screen.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
        onPressed: _showBottomSheet,
        child: const Icon(
          Icons.navigation,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Message {
  final String text;
  final bool isMe;

  Message({required this.text, required this.isMe});
}
