import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobistock/controllers/sales_management_controller.dart';
import 'package:mobistock/views/sales_management/sellProduct1.dart';
import 'package:mobistock/views/sales_management/sellProduct2.dart';
import 'package:mobistock/views/sales_management/sellProduct3.dart';
import 'package:mobistock/views/sales_management/sellProduct4.dart';
import 'package:mobistock/views/sales_management/sellProduct5.dart';
import 'package:mobistock/views/sales_management/widgets/sales_widgets.dart';

class FiveStepForm extends StatelessWidget {
  FiveStepForm({super.key});

  final controller = Get.put(SalesManagementController());

  final double _contentHeightFactor = 0.7;

  Widget _buildScrollableStepContent(Widget child, BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * _contentHeightFactor,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF667eea), Color(0xFF764ba2)],
          ),
        ),
        child: SafeArea(
          child: Obx(() => Stepper(
                type: StepperType.vertical,
                currentStep: controller.currentStep.value,
                onStepTapped: controller.goToStep,
                controlsBuilder: (context, details) {
                  return Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: <Widget>[
                        SalesWidgets.buildModernButton(
                          text: controller.currentStep.value == 4 ? "Finish" : "Next",
                          onPressed: controller.nextStep,
                        ),
                        const SizedBox(width: 16.0),
                        if (controller.currentStep.value > 0)
                          SalesWidgets.buildModernButton(
                            text: "Previous",
                            color: Colors.white.withOpacity(0.1),
                            onPressed: controller.previousStep,
                          ),
                      ],
                    ),
                  );
                },
                steps: [
                  Step(
                    title: const Text("SellProduct1"),
                    isActive: controller.currentStep.value >= 0,
                    content: _buildScrollableStepContent(const SellProduct1(), context),
                    state: controller.currentStep.value > 0
                        ? StepState.complete
                        : StepState.indexed,
                  ),
                  Step(
                    title: const Text("SellProduct2"),
                    isActive: controller.currentStep.value >= 1,
                    content: _buildScrollableStepContent(const SellProduct2(), context),
                    state: controller.currentStep.value > 1
                        ? StepState.complete
                        : StepState.indexed,
                  ),
                  Step(
                    title: const Text("SellProduct3"),
                    isActive: controller.currentStep.value >= 2,
                    content: _buildScrollableStepContent(const SellProduct3(), context),
                    state: controller.currentStep.value > 2
                        ? StepState.complete
                        : StepState.indexed,
                  ),
                  Step(
                    title: const Text("SellProduct4"),
                    isActive: controller.currentStep.value >= 3,
                    content: _buildScrollableStepContent(const SellProduct4(), context),
                    state: controller.currentStep.value > 3
                        ? StepState.complete
                        : StepState.indexed,
                  ),
                  Step(
                    title: const Text("SellProduct5"),
                    isActive: controller.currentStep.value >= 4,
                    content: _buildScrollableStepContent(const SellProduct5(), context),
                    state: StepState.indexed,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
