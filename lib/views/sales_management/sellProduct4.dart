import 'package:flutter/material.dart';
import 'package:mobistock/views/sales_management/widgets/sales_widgets.dart';

class SellProduct4 extends StatefulWidget {
  const SellProduct4({super.key});

  @override
  State<SellProduct4> createState() => _SellProduct4State();
}

class _SellProduct4State extends State<SellProduct4> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   "Customer Name",
          //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          // ),
          SalesWidgets.salesHeading(text: "Customer Name"),
      
          const SizedBox(height: 8.0),
      
          SalesWidgets.buildModernTextField(
            controller: TextEditingController(),
            hintText: "Customer ID",
            labelText: "Enter Customer ID",
            width: 150.0,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10.0),
          SalesWidgets.buildModernTextField(
            controller: TextEditingController(),
            hintText: "Customer Phone",
            labelText: "Enter Customer Phone",
            width: 150.0,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10.0),
      
          // Text(
          //   "Customer Email (Optional)",
          //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          // ),
          SalesWidgets.salesHeading(text: "Customer Email (Optional)"),
          const SizedBox(height: 10.0),
          SalesWidgets.buildModernTextField(
            controller: TextEditingController(),
            hintText: "Customer Email",
            labelText: "Enter Customer Email",
            width: double.infinity,
          ),
          const SizedBox(height: 16.0),
          SalesWidgets.buildModernTextField(
            controller: TextEditingController(),
            hintText: "Customer Address",
            labelText: "Enter Customer Address",
            width: double.infinity,
          ),
          const SizedBox(height: 16.0),
          SalesWidgets.salesHeading(text: "Customer Email (Optional)"),
          const SizedBox(height: 15.0),
          SalesWidgets.buildModernTextField(
            controller: TextEditingController(),
            hintText: "Customer Address (Optional)",
            labelText: "Enter Customer Address",
            keyboardType: TextInputType.text,
            width: double.infinity,
          ),
          const SizedBox(height: 16.0),
          SalesWidgets.salesHeading(text: "Customer Email (Optional)"),
          const SizedBox(height: 15.0),
          SalesWidgets.buildModernTextField(
            controller: TextEditingController(),
            hintText: "Customer Address (Optional)",
            labelText: "Enter Customer Address",
            keyboardType: TextInputType.text,
            width: double.infinity,
          ),
          Text(
            "Upload bill or invoice for warranty claims (PDF, JPG, PNG)",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
      
          // ElevatedButton(
          //   onPressed: () {
          //     Get.to(SellProduct5());
          //   },
          //   child: Text("SellProduct4"),
          // ),
        ],
      ),
    );
  }
}
