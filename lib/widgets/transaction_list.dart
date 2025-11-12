import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Aujourd\'hui , 11 Nov'),
                Row(children: [Text('Voir tout'), Icon(Icons.arrow_forward)]),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(Icons.fitness_center, color: Colors.purpleAccent),
            ),
            title: Text('Salle de sport'),
            subtitle: Text('Paiement'),
            trailing: Text('-37500', style: TextStyle(fontSize: 14)),
          ),
          Divider(color: Colors.grey[200]),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(Icons.account_balance, color: Colors.teal),
            ),
            title: Text('Bank of Africa'),
            subtitle: Text('Depot Bancaire'),
            trailing: Text(
              '+310000',
              style: TextStyle(color: Colors.teal, fontSize: 14),
            ),
          ),
          Divider(color: Colors.grey[200]),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(Icons.send, color: Colors.orangeAccent),
            ),
            title: Text('To my Love'),
            subtitle: Text('Envoi d\'argent'),
            trailing: Text('-175000', style: TextStyle(fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
