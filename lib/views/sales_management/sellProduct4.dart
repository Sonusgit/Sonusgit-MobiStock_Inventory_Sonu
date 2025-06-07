import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:mobistock/views/sales_management/common_widgets/common_textformfield.dart';
import 'package:mobistock/views/sales_management/sellProduct5.dart';
class SellProduct4 extends StatefulWidget {
  const SellProduct4({super.key});

  @override
  State<SellProduct4> createState() => _SellProduct4State();
}

class _SellProduct4State extends State<SellProduct4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sell Product 4')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Customer Name",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8.0),
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonTextFormField(
                    label: "Customer Name",
                    hint: "Enter Customer Name",
                    keyboardType: TextInputType.text,
                  width: 150.0,
                  ), 
                 CommonTextFormField(
                    label: "Customer Phone",
                    hint: "Enter Customer Phone",
                    keyboardType: TextInputType.text,
                  width: 150.0,
                  ), 
                ],
              ),

             Text(
                "Customer Email (Optional)",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              CommonTextFormField(
                label: "Customer Email",
                hint: "Enter Customer Email",
                keyboardType: TextInputType.emailAddress,
              width: double.infinity,

              ),
              const SizedBox(height: 16.0), 
                               CommonTextFormField(
                label: "Customer Address (Optional)",
                hint: "Enter Customer Address",
                keyboardType: TextInputType.text,
              width: double.infinity,
              ),
              const SizedBox(height: 16.0),
               Text(
                "Customer Email (Optional)",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15.0),
               CommonTextFormField(
                label: "Customer Address (Optional)",
                hint: "Enter Customer Address",
                keyboardType: TextInputType.text,
              width: double.infinity,
              ),
              Text(
                "Upload bill or invoice for warranty claims (PDF, JPG, PNG)",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
                ElevatedButton(onPressed: () {Get.to(SellProduct5());}, child: Text("SellProduct4"))

              
            ],
          ),
        ),
      ),
    );
  }
}
