import 'package:application/widgets/action_button.dart';
import 'package:application/widgets/credit_card.dart';
import 'package:application/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 80, 96),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bonjour !', style: TextStyle(color: Colors.white)),
                      Text(
                        'Boris Johnson',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton.outlined(
                    onPressed: () {},
                    icon: Icon(Icons.notifications, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 167),
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 110),
                        ActionButtons(),
                        SizedBox(height: 30),
                        TransactionList(),
                      ],
                    ),
                  ),
                  Positioned(top: 20, left: 25, right: 25, child: CreditCard()),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.white,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       IconButton(
      //         icon: Column(
      //           children: [
      //             Icon(Icons.home, color: Colors.black),
      //             Text('Home', style: TextStyle(fontSize: 10)),
      //           ],
      //         ),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Column(
      //           children: [
      //             Icon(Icons.credit_card),
      //             Text('My Card', style: TextStyle(fontSize: 10)),
      //           ],
      //         ),
      //         color: Colors.black,
      //         onPressed: () {},
      //       ),
      //       FloatingActionButton(
      //         shape: CircleBorder(),
      //         backgroundColor: Color.fromARGB(255, 16, 80, 98),
      //         onPressed: () {},
      //         child: Icon(Icons.qr_code_scanner, color: Colors.white),
      //       ),
      //       IconButton(
      //         icon: Column(
      //           children: [
      //             Icon(Icons.bar_chart),
      //             Text('Statistics', style: TextStyle(fontSize: 10)),
      //           ],
      //         ),
      //         color: Colors.black,
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Column(
      //           children: [
      //             Icon(Icons.person),
      //             Text('Profile', style: TextStyle(fontSize: 10)),
      //           ],
      //         ),
      //         color: Colors.black,
      //         onPressed: () {},
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
