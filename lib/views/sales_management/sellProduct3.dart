import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:mobistock/views/sales_management/common_textformfield.dart';
import 'package:mobistock/views/sales_management/common_widgets/common_dropdown_button.dart';
import 'package:mobistock/views/sales_management/common_widgets/common_radio._buttondart';
import 'package:mobistock/views/sales_management/sellProduct4.dart';

class SellProduct3 extends StatefulWidget {
  const SellProduct3({super.key});

  @override
  State<SellProduct3> createState() => _SellProduct3State();
}

class _SellProduct3State extends State<SellProduct3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sell Product 3')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Base Price (₹)",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8.0),
               CommonTextFormField(
                    label: "Down Payment (₹)",
                    hint: "Enter Down Payment",
                    keyboardType: TextInputType.number,
                  width: double.infinity,
                  ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonTextFormField(
                    label: "GST (₹)",
                    hint: "Enter GST",
                    keyboardType: TextInputType.number,
                  width: 150.0,
                  ), 
                 CommonTextFormField(
                    label: "Accessories (₹)",
                    hint: "Enter Accessories",
                    keyboardType: TextInputType.number,
                  width: 150.0,
                  ), 
                ],
              ),

             
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonTextFormField(
                    label: "Repairs (₹)",
                    hint: "Enter Repairs",
                    keyboardType: TextInputType.number,
                  width: 150.0,
                  ), 
                 CommonTextFormField(
                    label: "Discount (₹)",
                    hint: "Enter Discount",
                    keyboardType: TextInputType.number,
                  width: 150.0,
                  ), 
                  
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Text(
                    "Final Total Price",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ), 
                  Text(
                    "₹91,399",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
                ElevatedButton(onPressed: () {Get.to(SellProduct4());}, child: Text("SellProduct4"))

              
            ],
          ),
        ),
      ),
    );
  }
}
