// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  // ignore: prefer_const_constructors_in_immutables
  HomeScreen({super.key, });



  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                            padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                            child: Image(image: AssetImage('assets/logo.png', ),
                            height: 60,
                            )// Replace with your actual logo
                          ),
                          const ListTile(
                            title: Text('Statement'),
                          ),
                          const ListTile(
                            title: Text('Members'),
                          ),
                          const ExpansionTile(
                            title: Text('Investments'),
                            children: [
                              ListTile(
                                title: Text('My Investments'),
                              ),
                              ListTile(
                                title: Text('Accounting History'),
                              ),
                            ],
                          ),
                          const ExpansionTile(
                            title: Text('Receivables'),
                            children: [
                              ListTile(
                                title: Text('Invoices'),
                              ),
                              ListTile(
                                title: Text('Boletos'),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            title:  Text('Corporate Card'),
                            children: [
                              ListTile(
                                title:  Text('Overview'),
                                trailing: Container(
                                  padding:   EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child:   Text('NEW', style: TextStyle(color: Colors.white)),
                                ),
                              ),
                              ListTile(
                                title: Text('Analytics'),
                              ),
                              ListTile(
                                title: Text('Cards'),
                              ),
                              ListTile(
                                title: Text('Purchases'),
                              ),
                              ListTile(
                                title: Text('Hackathon Account 927903'),
                                trailing: Icon(Icons.arrow_drop_down),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            title:  Text('Integrations'),
                            children: const [
                              ListTile(
                                title: Text('Projects'),
                              ),
                              ListTile(
                                title: Text('Webhooks'),
                              ),
                              
                            ],
                          ),
                          ExpansionTile(
                            title:  Text('Operations'),
                            children: const [
                              ListTile(
                                title: Text('Deposits'),
                              ),
                              ListTile(
                                title: Text('Invoices'),
                              ),
                               ListTile(
                                title: Text('Boletos'),
                              ),
                               ListTile(
                                title: Text('Card Acquiring'),
                              ),
                               ListTile(
                                title: Text('Transfers'),
                              ),
                               ListTile(
                                title: Text('Tax Payments'),
                              ),
                              ListTile(
                                title: Text('Utility Payments'),
                              ),
                              ListTile(
                                title: Text('Boletos Payments'),
                              ),
                              ListTile(
                                title: Text('QR Code Payments'),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            title:  Text('Payables'),
                            children: const [
                            ],
                          ),
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
                            Text('Dashboard', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.blueAccent)
                                  ),
                                  child: TextButton(
                                    onPressed: (){}, 
                                    child: Text('Daily: 16/08/2024 - 15/09/2024',
                                    style: TextStyle(color: Colors.blue),
                                    ),
                                    ),
                                ),
                                // ElevatedButton(
                                 
                                //   onPressed: () {},
                                //   style: ElevatedButton.styleFrom(
                                //     backgroundColor: Colors.white,
                                //     shape: OvalBorder(),
                                //     surfaceTintColor: Colors.blue,
                                //     padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                                //     textStyle: TextStyle(fontSize: 16.0),
                                //   ),
                                //   child: Text('Daily: 16/08/2024 - 15/09/2024', style: TextStyle(
                                //     color: Colors.blue
                                //   ),),
                                // ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 27.5),
                                     child: Row(
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 25,
                                          decoration: BoxDecoration(
                                          border: Border.all(color: Colors.blue),
                                          color: Colors.blue
                                          ),
                                          child: Center(
                                            child: Text('Daily', style: TextStyle(
                                              color: Colors.white
                                            ),),
                                          ),
                                          ),
                                            Container(
                                          width: 80,
                                          height: 25,
                                          decoration: BoxDecoration(
                                          border: Border.all(color: Colors.blue),
                                          ),
                                          child: Center(
                                            child: Text('Montly', style: TextStyle(
                                              color: Colors.blue
                                            ),),
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
        onPressed: () {
          setState(() {
          });
        },
        child: const Icon(Icons.navigation,color: Colors.white,),
      ),
    );
  }
}