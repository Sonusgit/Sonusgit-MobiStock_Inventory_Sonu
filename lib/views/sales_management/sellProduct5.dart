import 'package:flutter/material.dart';

class SellProduct5 extends StatelessWidget {
  const SellProduct5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sell Product - Step 5'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
              width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Summary",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          
                          children: [
                            Text("Total Amount: ₹10000"),
                            Text("Down Payment: ₹2000"),
                            Text("Remaining Balance: ₹8000"),
                          ],
                        ),Column(
                          children: [
                            Text("Total Amount: ₹10000"),
                            Text("Down Payment: ₹2000"),
                            Text("Remaining Balance: ₹8000"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
             )
            ],
          ),
        ),
      ),
    );
    
  }
}
