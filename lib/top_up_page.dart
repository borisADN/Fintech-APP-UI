import 'package:application/top_up_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({super.key});

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  String selectedProvider = 'Bank of America';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton.outlined(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text('Top Up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bank Transfer',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              PaymentProvider(
                image: 'assets/images/bank_of_america.jpg',
                name: 'Bank Of America',
                account: '1234 5678 9012 3456',
                isSelected: selectedProvider == 'Bank Of America',
                onChanged: (value) {
                  if (value == true) {
                    setState(() {
                      selectedProvider = 'Bank Of America';
                    });
                  }
                },
              ),
              PaymentProvider(
                image: "assets/images/us_bank.png",
                name: "U.S Bank",
                account: "**** **** **** 1990",
                isSelected: selectedProvider == 'U.S Bank',
                onChanged: (value) {
                  if (value == true) {
                    setState(() {
                      selectedProvider = 'U.S Bank';
                    });
                  }
                },
              ),
              const Text(
                "Other",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              PaymentProvider(
                image: "assets/images/paypal.jpg",
                name: "Paypal",
                account: "Easy payment",
                isSelected: selectedProvider == 'Paypal',
                onChanged: (value) {
                  if (value == true) {
                    setState(() {
                      selectedProvider = 'Paypal';
                    });
                  }
                },
              ),
              PaymentProvider(
                image: "assets/images/apple.png",
                name: "Apple pay",
                account: "Easy payment",
                isSelected: selectedProvider == 'Apple pay',
                onChanged: (value) {
                  if (value == true) {
                    setState(() {
                      selectedProvider = 'Apple pay';
                    });
                  }
                },
              ),
              PaymentProvider(
                image: "assets/images/google.png",
                name: "Google pay",
                account: "Easy payment",
                isSelected: selectedProvider == 'Google pay',
                onChanged: (value) {
                  if (value == true) {
                    setState(() {
                      selectedProvider = 'Google pay';
                    });
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  showBarModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (context) => TopUpBottomSheet(
                      selectedProvider: selectedProvider,
                      image: getImageForProvider(selectedProvider),
                      account: getAccountForProvider(selectedProvider),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  fixedSize: const Size(double.maxFinite, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Confirm",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String getAccountForProvider(String provider) {
  switch (provider) {
    case 'Bank Of America':
      return '**** **** **** 1990';
    case 'U.S Bank':
      return '**** **** **** 1990';
    default:
      return 'Easy Payment';
  }
}

String getImageForProvider(String provider) {
  switch (provider) {
    case 'Bank Of America':
      return 'assets/images/bank_of_america.jpg';
    case 'U.S Bank':
      return 'assets/images/us_bank.png';
    case 'Paypal':
      return 'assets/images/paypal.jpg';
    case 'Apple pay':
      return 'assets/images/apple.png';
    case 'Google pay':
      return 'assets/images/google.png';
    default:
      return 'assets/images/default.png';
  }
}

class PaymentProvider extends StatelessWidget {
  final String image;
  final String name;
  final String account;
  final bool isSelected;
  final ValueChanged<bool?>? onChanged;
  const PaymentProvider({
    super.key,
    required this.image,
    required this.name,
    required this.account,
    required this.isSelected,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.white,
          ),
          title: Text(name),
          subtitle: Text(account),
          trailing: Transform.scale(
            scale: 1.5,
            child: Radio.adaptive(
              value: true,
              groupValue: isSelected,
              onChanged: onChanged,
              activeColor: Color.fromARGB(255, 16, 80, 98),
            ),
          ),
          contentPadding: const EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.black12, width: 1),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
