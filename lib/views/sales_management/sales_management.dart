import 'package:flutter/material.dart';
import 'package:mobistock/views/sales_management/sellProduct1.dart';

class SalesManagement extends StatefulWidget {
  const SalesManagement({super.key});

  @override
  State<SalesManagement> createState() => _State();
}

class _State extends State<SalesManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sales Management'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           SellAProduct1(),
          ],
        ),
      ),
    );
  }
}