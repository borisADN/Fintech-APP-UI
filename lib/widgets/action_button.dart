import 'package:application/transfer_money.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 239, 243, 245),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ActionButton(
              icon: Icons.account_balance,
              label: 'Depot',
              onTap: () {},
            ),
            ActionButton(
              icon: Icons.swap_horiz_rounded,
              label: 'Transfert',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TransferMoney()),
              ),
            ),
            ActionButton(
              icon: Icons.attach_money_rounded,
              label: 'Retrait',
              onTap: () {},
            ),
            ActionButton(icon: Icons.apps_sharp, label: 'Plus', onTap: () {}),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final void Function()? onTap;
  const ActionButton({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton.outlined(
          onPressed: onTap,
          icon: Icon(icon),
          color: Color.fromARGB(255, 16, 80, 98),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
