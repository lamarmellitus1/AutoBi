import 'package:flutter/material.dart';
import 'package:pub/ui/entries/transaction_history/tx_transcation.dart';

class TransactionHistorySCreen extends StatelessWidget {
  TransactionHistorySCreen({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> _txHistory = [
    {
      "imagePath": "lib/ui/assets/image/benz4.png",
      "date": "Dec 23 2024| 10.00Am",
      "price": "\$1717,250",
      "title": "BMW M5 series",
      "datemonth": "october"
    },
    {
      "imagePath": "lib/ui/assets/image/auto.png",
      "date": "Dec 23 2024| 10.00Am",
      "price": "\$200,,000",
      "title": "Top Up Wallet",
      "datemonth": "october"
    },
    {
      "imagePath": "lib/ui/assets/image/benz.jpg",
      "date": "Dec 23 2024| 10.00Am",
      "price": "\$189,550",
      "title": "BMW M5 series",
      "datemonth": "october"
    },
    {
      "imagePath": "lib/ui/assets/image/benz4.png",
      "date": "Dec 23 2024| 10.00Am",
      "price": "\$1717,250",
      "title": "BMW M5 series",
      "datemonth": "october"
    },
    {
      "imagePath": "lib/ui/assets/image/benz.jpg",
      "date": "Dec 23 2024| 10.00Am",
      "price": "\$1717,250",
      "title": "BMW M5 series",
      "datemonth": "october"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _txHistory.length,
          itemBuilder: (context, int index) {
            return TransactionHistory(
              date: _txHistory[index]["date"],
              dateMonth: _txHistory[index]["datemonth"],
              imagePath: _txHistory[index]["imagePath"],
              price: _txHistory[index]["price"],
              title: _txHistory[index]["title"],
            );
          }),
    );
  }
}
