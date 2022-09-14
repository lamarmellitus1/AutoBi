// import 'package:flutter/material.dart';
// import 'package:pub/ui/entries/transaction_history/topUp.dart';

// class TopupAmounts extends StatelessWidget {
//   TopupAmounts({Key? key}) : super(key: key);
//   final List<String> _topupAmount = [
//     "\$10,000,",
//     "\$10,000,",
//     "\$10,000,",
//     "\$10,000,",
//     "\$10,000,",
//     "\$10,000," "\$10,000,"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.count(
//           crossAxisSpacing: 1,
//           mainAxisSpacing: 2,
//           crossAxisCount: 3,
//           children: _topupAmount.map((e) {
//             return TopUp(amount: e.length.toString());
//           }).toList()),
//     );
//   }
// }
