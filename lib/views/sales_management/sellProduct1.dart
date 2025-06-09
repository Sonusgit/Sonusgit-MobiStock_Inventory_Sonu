// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobistock/views/sales_management/widgets/sales_widgets.dart';

class SellProduct1 extends StatefulWidget {
  const SellProduct1({super.key});

  @override
  State<SellProduct1> createState() => _State();
}

class _State extends State<SellProduct1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SalesWidgets.salesHeading(
          text: 'Company',
        ),
        SizedBox(height: 20),
        SalesWidgets.buildModernDropdownButton(
          width: double.infinity,
          hintText: 'Select Category',
          items: ['Apple', "Samsung", 'Oppo', 'Vivo'],
          selectedValue: 'Apple',
          onChanged: (value) {
            // Handle dropdown value change
          },
        ),
        SizedBox(height: 20),
        SalesWidgets.salesHeading(
          text: 'Model',
        ),
        SalesWidgets.buildModernDropdownButton(
          width: double.infinity,
          hintText: 'Select Model',
          items: ['iPhone 13', "Galaxy S21", 'Oppo Find X3', 'Vivo X60'],
          selectedValue: 'iPhone 13',
          onChanged: (value) {
            // Handle dropdown value change
          },
        ),
        SizedBox(height: 20),
        SalesWidgets.salesHeading(
          text: 'RAM/ROM Variant',
        ),
        SalesWidgets.buildModernDropdownButton(
          width: double.infinity,
          hintText: 'Select RAM/ROM Variant',
          items: ['4GB/64GB', "6GB/128GB", '8GB/256GB'],
          selectedValue: '4GB/64GB',
          onChanged: (value) {
            // Handle dropdown value change
          },
        ),
        SizedBox(height: 20),
        SalesWidgets.salesHeading(
          text: 'Color',
        ),
        SalesWidgets.buildModernDropdownButton(
          width: double.infinity,
          hintText: 'Select Color',
          items: ['Black', "White", 'Blue', 'Red'],
          selectedValue: 'Black',
          onChanged: (value) {
            // Handle dropdown value change
          },
        ),
        SizedBox(height: 20),
        SalesWidgets.salesHeading(
          text: 'Quantity',
        ),
        SalesWidgets.buildModernTextField(controller: TextEditingController(), hintText: 'Enter Quantity', labelText: 'Quantity', width: double.infinity,keyboardType: TextInputType.number, ),
       
        
      ],
    );
  }
}