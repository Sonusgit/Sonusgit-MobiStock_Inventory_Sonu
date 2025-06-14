import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:mobistock/controllers/auth_controller.dart';
import 'package:mobistock/routes/app_pages.dart';
import 'package:mobistock/routes/app_routes.dart';
import 'package:mobistock/utils/page_not_found.dart';
import 'package:mobistock/views/sales_management/sales_management.dart';
import 'package:mobistock/views/sales_management/sellProduct1.dart';

import 'views/sales_management/five_stap_forn.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  

  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MobiStock',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // initialRoute: AppPages.initial,
      // getPages: AppPages.routes,
      // unknownRoute: GetPage(
      //   name: AppRoutes.notFound,
      //   page: () => PageNotFoundScreen(),
      // ),
      home: FiveStepForm(),
      debugShowCheckedModeBanner: false,
    );
  }
}
// class constentController {}
