import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mobistock/views/sales_management/sellProduct3.dart';
import 'package:mobistock/views/sales_management/widgets/sales_widgets.dart';

class SellProduct2 extends StatefulWidget {
  const SellProduct2({super.key});

  @override
  State<SellProduct2> createState() => _SellProduct2State();
}

class _SellProduct2State extends State<SellProduct2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SalesWidgets.salesHeading(text: "Payment Type"),
        const SizedBox(height: 8.0),
        Row(
          children: [
            SalesWidgets.buildmodernRadioButton(
              icon: Icon(Icons.book, color: Colors.white),
              value: "Full Payment",
              groupValue: 'Full Payment',
              onChanged: (value) {
                // Handle radio button change
              },
            ),
            SalesWidgets.buildmodernRadioButton(
              icon: Icon(Icons.book, color: Colors.white),
              value: 'EMI Payment',
              groupValue: 'EMI Payment',
              onChanged: (value) {
                // Handle radio button change
              },
            ),
          ],
        ),
        
        SalesWidgets.salesHeading(text: "EMI Type"),
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // CommontRadioButton(
            //   label: "Company EMI",
            //   icon: Icon(Icons.phone_android),
            //   value: "3_months",
            //   groupValue: "emiType",
            // ),
            // CommontRadioButton(
            //   label: "Shop EMI",
            //   icon: Icon(Icons.money),
            //   value: "6_months",
            //   groupValue: "emiType",
            // ),
            SalesWidgets.buildmodernRadioButton(
              icon: Icon(Icons.phone_android, color: Colors.white),
              value: "Company EMI",
              groupValue: "Company EMI",
              onChanged: (value) {
                // Handle radio button change
              },
            ),
            SalesWidgets.buildmodernRadioButton(
              icon: Icon(Icons.money, color: Colors.white),
              value: "Shop EMI",
              groupValue: 'Shop EMI',
              onChanged: (value) {
                // Handle radio button change
              },
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        SalesWidgets.salesHeading(text: "EMI Type"),
        const SizedBox(height: 8.0),
        SalesWidgets.buildModernTextField(
          controller: TextEditingController(),
          hintText: "Down Payment (₹)",
          labelText: "Enter Down Payment",
          width: 200.0,
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 16.0),
        SalesWidgets.buildModernTextField(
          controller: TextEditingController(),
          hintText: "Down Payment (₹)",
          labelText: "Enter Down Payment",
          width: 200.0,
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 16.0),
        SalesWidgets.salesHeading(text: "EMI Duration"),
        const SizedBox(height: 8.0),
        SalesWidgets.buildModernDropdownButton(
          width: double.infinity,
          hintText: 'Select Duration',
          items: ['3 Months', '6 Months', '12 Months'],
          selectedValue: '3 Months',
          onChanged: (value) {
            // Handle dropdown value change
          },
        ),
        const SizedBox(height: 16.0),
        SalesWidgets.buildModernTextField(
          controller: TextEditingController(),
          hintText: "Down Payment (₹)",
          labelText: "Enter Down Payment",
          width: double.infinity,
          keyboardType: TextInputType.number,
        ),
       
      ],
    );
  }
}
