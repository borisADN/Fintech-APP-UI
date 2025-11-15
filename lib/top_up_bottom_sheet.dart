import 'package:flutter/material.dart';

class TopUpBottomSheet extends StatefulWidget {
  final String selectedProvider;
  final String account;
  final String image;
  const TopUpBottomSheet({
    super.key,
    required this.selectedProvider,
    required this.account,
    required this.image,
  });

  @override
  State<TopUpBottomSheet> createState() => _TopUpBottomSheetState();
}

class _TopUpBottomSheetState extends State<TopUpBottomSheet> {
  int selectedAmount = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(widget.image),
              backgroundColor: Colors.white,
            ),
            title: Text(widget.selectedProvider),
            subtitle: Text(widget.account),
            trailing: Icon(Icons.keyboard_arrow_down, color: Colors.blueGrey),
            contentPadding: const EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.black12, width: 1),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Montant',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
              ),
              Text(
                selectedAmount.toString(),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.add),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    selectedAmount += 50;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 20),

          Slider(
            value: selectedAmount.toDouble(),
            min: 50,
            max: 1000,
            activeColor: Color.fromARGB(255, 16, 80, 98),
            onChanged: (value) {
              setState(() {
                selectedAmount = value.toInt();
              });
            },
          ),

          SizedBox(height: 20),

          Center(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [300, 400, 500, 600, 700, 800, 900, 1000].map((amount) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedAmount = amount;
                    });
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: selectedAmount == amount
                          ? Color.fromARGB(255, 16, 80, 98)
                          : Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      amount.toString(),
                      style: TextStyle(
                        color: selectedAmount == amount
                            ? Colors.white
                            : Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              fixedSize: const Size(double.maxFinite, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              "Top Up",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
