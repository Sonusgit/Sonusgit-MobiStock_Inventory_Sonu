import 'package:flutter/material.dart';
import 'package:mobistock/views/sales_management/five_stap_forn.dart';

enum PaymentType { payment, cash }

class SalesManagement extends StatefulWidget {
  const SalesManagement({super.key});

  @override
  State<SalesManagement> createState() => _SalesManagementState();
}

class _SalesManagementState extends State<SalesManagement> {
  PaymentType? _paymentType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sales Management'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 20),
              Text(
                "Select Payment Type",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              RadioListTile<PaymentType>(
                title: Text('Payment (Online)'),
                value: PaymentType.payment,
                groupValue: _paymentType,
                onChanged: (PaymentType? value) {
                  setState(() {
                    _paymentType = value;
                  });
                },
              ),

              RadioListTile<PaymentType>(
                title: Text('Cash'),
                value: PaymentType.cash,
                groupValue: _paymentType,
                onChanged: (PaymentType? value) {
                  setState(() {
                    _paymentType = value;
                  });
                },
              ),

              SizedBox(height: 20),
              Text(
                'Selected: ${_paymentType == PaymentType.payment ? 'Online Payment' : _paymentType == PaymentType.cash ? 'Cash' : 'None'}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
