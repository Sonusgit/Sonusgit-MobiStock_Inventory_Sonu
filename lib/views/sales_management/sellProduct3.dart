import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:mobistock/views/sales_management/sellProduct4.dart';
import 'package:mobistock/views/sales_management/widgets/sales_widgets.dart';

class SellProduct3 extends StatefulWidget {
  const SellProduct3({super.key});

  @override
  State<SellProduct3> createState() => _SellProduct3State();
}

class _SellProduct3State extends State<SellProduct3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   "Base Price (₹)",
          //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          // ),
          SalesWidgets.salesHeading(text: "Base Price (₹)"),
          
          const SizedBox(height: 8.0),
          SalesWidgets.buildModernTextField(
            controller: TextEditingController(),
            hintText: "Down Payment (₹)",
            labelText: "Enter Down Payment",
            width: double.infinity,
          ),
          const SizedBox(height: 10.0),
          SalesWidgets.buildModernTextField(
            controller: TextEditingController(),
            hintText: "GST (₹)",
            labelText: "Enter GST",
            width: 150.0,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10.0),
          SalesWidgets.buildModernTextField(
            controller: TextEditingController(),
            hintText: "Accessories (₹)",
            labelText: "Enter Accessories",
            width: 150.0,
            keyboardType: TextInputType.number,
          ),
          
          const SizedBox(height: 10.0),
          SalesWidgets.buildModernTextField(
            controller: TextEditingController(),
            hintText: "Repairs (₹)",
            labelText: "Enter Repairs",
            width: 150.0,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10.0),
          SalesWidgets.buildModernTextField(
            controller: TextEditingController(),
            hintText: "Discount (₹)",
            labelText: "Enter Discount",
            width: 150.0,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
            children: [
              SalesWidgets.salesHeading(text: "Total Price (₹)"),
              const SizedBox(width: 10.0),
              SalesWidgets.salesHeading(text: "₹91,399"),
            ],
          ),
         
        ],
      ),
    );
  }
}
