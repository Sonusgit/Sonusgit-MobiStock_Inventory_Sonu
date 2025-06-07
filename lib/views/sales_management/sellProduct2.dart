import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:mobistock/views/sales_management/common_textformfield.dart';
import 'package:mobistock/views/sales_management/common_widgets/common_dropdown_button.dart';
import 'package:mobistock/views/sales_management/common_widgets/common_radio._buttondart';
import 'package:mobistock/views/sales_management/sellProduct3.dart';

class SellProduct2 extends StatefulWidget {
  const SellProduct2({super.key});

  @override
  State<SellProduct2> createState() => _SellProduct2State();
}

class _SellProduct2State extends State<SellProduct2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sell Product 2')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment Type",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommontRadioButton(
                    label: "Cash",
                    icon: Icon(Icons.payment),
                    value: "cash",
                    groupValue: "paymentType",
                  ),
                  CommontRadioButton(
                    label: "EMI Payment",
                    icon: Icon(Icons.credit_card),
                    value: "emi_payment",
                    groupValue: "paymentType",
                  ),
                ],
              ),

              Text(
                "EMI Type",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommontRadioButton(
                    label: "Company EMI",
                    icon: Icon(Icons.phone_android),
                    value: "3_months",
                    groupValue: "emiType",
                  ),
                  CommontRadioButton(
                    label: "Shop EMI",
                    icon: Icon(Icons.money),
                    value: "6_months",
                    groupValue: "emiType",
                  ),
                  
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                "EMI Type",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonTextFormField(
                    label: "Down Payment (₹)",
                    hint: "Enter Down Payment",
                    keyboardType: TextInputType.number,
                    width: 120.0,
                  ), CommonTextFormField(
                    label: "Down Payment (₹)",
                    hint: "Enter Down Payment",
                    keyboardType: TextInputType.number,
                    width: 120.0,
                  ),
                ],

                
              ),
              const SizedBox(height: 16.0), Text(
                "EMI Type",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                  width: 200.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: CommonDropdownButton(
                    items: [
                    
                      "3 Months",
                      "6 Months",
                      "9 Months",
                      "12 Months",
                      "18 Months",
                      "24 Months",
                    ],
                  ),
                ),
                 CommonTextFormField(
                    label: "Monthly EMI Amount (₹)",
                    hint: "Enter Monthly EMI Amount",
                    keyboardType: TextInputType.number,
                    width: 120.0,
                  ),
                ],
              ),
                ElevatedButton(onPressed: () {Get.to(SellProduct3());}, child: Text("SellProduct3"))

            ],
          ),
        ),
      ),
    );
  }
}
