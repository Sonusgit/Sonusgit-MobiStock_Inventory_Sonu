import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobistock/controllers/auth_controller.dart';

class InventoryDashboard extends StatelessWidget {
  const InventoryDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return  PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(actions: [IconButton(onPressed: ()=> authController.logout(), icon: Icon(Icons.logout))],),
        body: Center(child: Text("Dashboard"),),),
    );
  }
}