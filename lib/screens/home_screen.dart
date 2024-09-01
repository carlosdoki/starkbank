// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:starkbank/widget/expantion_tile_widget.dart';
import 'package:intl/intl.dart';

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
  bool isSender = true;
  final _textController = TextEditingController();
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  void _sendMessage() async {
    if (_textController.text.isNotEmpty) {
      //Fazer chamada na API para verificar sentimento

      await firestore.collection('messages').add({
        'sender': 'client',
        'message': _textController.text,
        'timestamp': FieldValue.serverTimestamp(),
      });
      _textController.clear();
    }
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Color(0xFFF7F9FA),
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Atendimento Stark',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                padding: EdgeInsets.only(
                  bottom: 10,
                ),
              ),
              Divider(
                color: Color(0xFFBDC4C9),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: firestore
                      .collection('messages')
                      .orderBy('timestamp', descending: true)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Center(
                          child: Text('Error loading messages'));
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    return ListView.builder(
                      reverse: true,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        final message = snapshot.data!.docs[index];
                        final Timestamp timestamp =
                            message['timestamp'] ?? Timestamp.now();
                        DateTime dateTime = timestamp.toDate();
                        String formattedTime =
                            DateFormat('HH:mm').format(dateTime);
                        return Padding(
                          padding: EdgeInsets.only(
                            left: message['sender'] == 'client' ? 50 : 0,
                            right: message['sender'] != 'client' ? 50 : 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    30), // Change the border radius here
                                child: message['sender'] != 'client'
                                    ? Image(
                                        image: AssetImage('assets/logo.png'),
                                        width: 37,
                                        height: 37,
                                      )
                                    : Container(),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      // padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: message['sender'] == 'client'
                                            ? Color(0xFF2692FF)
                                            : Color(
                                                0xFFBDC4C9), // Custom color for text bubble
                                        borderRadius: message['sender'] ==
                                                'client'
                                            ? BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                bottomLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20))
                                            : BorderRadius.only(
                                                topRight: Radius.circular(20),
                                                bottomLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20)),
                                      ),
                                      child: ListTile(
                                        trailing: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 12),
                                          child: Text(formattedTime),
                                        ),
                                        title: Text(message['message']),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _textController,
                        decoration: const InputDecoration(
                          hintText: 'Como posso te ajudar hoje?',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: _sendMessage,
                      icon: const Icon(Icons.send),
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
                          SizedBox(
                            height: 75,
                          ),
                          AccountTile(),
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Text('Dashboard',
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25),
                                  child: Container(
                                    width: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xFF0070E0))),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Diário: 16/08/2024 - 15/09/2024',
                                        style:
                                            TextStyle(color: Color(0xFF0070E0)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 100),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xFF0070E0)),
                                            color: Color(0xFF0070E0)),
                                        child: Center(
                                          child: Text(
                                            'Diário',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 80,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFF0070E0)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Mensal',
                                            style: TextStyle(
                                                color: Color(0xFF0070E0)),
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
        backgroundColor: Color(0xFF0070E0),
        shape: CircleBorder(),
        onPressed: _showBottomSheet,
        child: const Icon(
          Icons.message,
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
