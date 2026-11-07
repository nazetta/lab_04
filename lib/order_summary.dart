import 'package:flutter/material.dart';

import 'order.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  final String itemName = 'Vegetable Pizza';
  final double unitPrice = 12.50;
  final int quantity = 2;

  @override
  Widget build(BuildContext context) {
    final double total = orderTotal(unitPrice: unitPrice, quantity: quantity);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Summary'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item: $itemName'),
            const SizedBox(height: 8),
            Text('Quantity: $quantity'),
            const SizedBox(height: 8),
            Text('Total: RM ${total.toStringAsFixed(2)}'),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
