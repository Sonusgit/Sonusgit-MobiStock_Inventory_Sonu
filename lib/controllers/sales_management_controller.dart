import 'package:get/get.dart';
import 'package:mobistock/views/sales_management/sales_management.dart';

class SalesManagementController extends GetxController {
  // Track current step using observable
  final currentStep = 0.obs;

  // Step increment
  void nextStep() {
    if (currentStep.value < 4) {
      currentStep.value++;
    } else {
      // Navigate to SalesManagement screen
      Get.to(() => const SalesManagement());
    }
  }

  // Step decrement
  void previousStep() {
    if (currentStep.value > 0) {
      currentStep.value--;
    }
  }

  // Tap on step
  void goToStep(int index) {
    currentStep.value = index;
  }
}
