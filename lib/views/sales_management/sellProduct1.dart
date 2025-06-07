import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mobistock/views/sales_management/common_widgets/common_textformfield.dart';
import 'package:mobistock/views/sales_management/common_widgets/common_dropdown_button.dart';
import 'package:mobistock/views/sales_management/sellProduct2.dart';

class SellAProduct1 extends StatefulWidget {
  const SellAProduct1({super.key});

  @override
  State<SellAProduct1> createState() => _SellAProduct1State();
}

class _SellAProduct1State extends State<SellAProduct1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sell a Product')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Company",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Container(
                  width: double.infinity,
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
                      "Company",
                      "Apple",
                      "Samsug",
                      "vivo",
                      "Oppo",
                      "Realme",
                      "OnePlus",
                      "Google",
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  "Model",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Container(
                  width: double.infinity,
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
                      "Model",
                      "iPhone 14",
                      "Galaxy S21",
                      "Pixel 6",
                      "OnePlus 9",
                      "Oppo Find X3",
                      "Realme GT",
                      "Vivo X60",
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  "RAM/ROM Variant",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Container(
                  width: double.infinity,
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
                      "RAM/ROM Variant",
                      "4GB/64GB",
                      "6GB/128GB",
                      "8GB/256GB",
                      "12GB/512GB",
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                 Text(
                  "Color",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                 Container(
                  width: double.infinity,
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
                      "Color",
                      "Black",
                      "White",
                      "Blue",
                      "Red",
                      "Green",
                      "Gold",
                      "Silver",
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                  Text(
                  "Quantity",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
 ),
                const SizedBox(height: 8.0),
                CommonTextFormField(
                  label: "Quantity",
                  hint: "Enter Quantity",
                  keyboardType: TextInputType.number,
                  width: 200.0,
                ),
                ElevatedButton(onPressed: () {Get.to(SellProduct2());}, child: Text("SellProduct2"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
