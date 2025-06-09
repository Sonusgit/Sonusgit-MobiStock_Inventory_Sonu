import 'package:flutter/material.dart';
import 'package:mobistock/views/sales_management/sellProduct1.dart';
import 'package:mobistock/views/sales_management/sellProduct2.dart';
import 'package:mobistock/views/sales_management/sellProduct3.dart';
import 'package:mobistock/views/sales_management/sellProduct4.dart';
import 'package:mobistock/views/sales_management/sellProduct5.dart';
import 'package:mobistock/views/sales_management/widgets/sales_widgets.dart';

class SalesManagement extends StatefulWidget {
  const SalesManagement({super.key});

  @override
  State<SalesManagement> createState() => _State();
}

class _State extends State<SalesManagement> {
  int _currentStap = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF667eea), Color(0xFF764ba2)],
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              Stepper(
                type: StepperType.vertical,
                
                controlsBuilder: (context, details) {
                  return Container(
                    margin:EdgeInsets.only(top: 10) ,
                    child: Row(
                      
                      children: <Widget>[
                        SalesWidgets.buildModernButton(
                          text: "Next",
                          onPressed: details.onStepContinue ?? () {},
                        ),
                        SizedBox(width: 16.0),
                        SalesWidgets.buildModernButton(
                          text: "Previous",
                          color:  Colors.white.withOpacity(0.1),
                          onPressed: details.onStepCancel ?? () {},
                        ),
                      ],
                    ),
                  );
                },
                steps: [
                  Step(title: Text("SellProduct1"), isActive: _currentStap >=0, content: SellProduct1(),state: _currentStap >=0 ? StepState.complete:StepState.disabled),
                  Step(title: Text("SellProduct2"), isActive: _currentStap >=1, content: SellProduct2(),state: _currentStap >=1 ? StepState.complete:StepState.disabled),
                  Step(title: Text("SellProduct3"), isActive: _currentStap >=2, content: SellProduct3(),state: _currentStap >=2 ? StepState.complete:StepState.disabled),
                  Step(title: Text("SellProduct4"), isActive: _currentStap >=3, content: SellProduct4(),state: _currentStap >=3 ? StepState.complete:StepState.disabled),
                  Step(title: Text("SellProduct5"), isActive: _currentStap >=4, content: SellProduct5(),state: _currentStap >=4 ? StepState.complete:StepState.disabled),
                ],
                onStepTapped: (int newIndex) {
                  setState(() {
                    _currentStap = newIndex;
                  });
                },
                currentStep: _currentStap,
                onStepContinue: () {
                  if (_currentStap != 5) {
                    setState(() {
                      _currentStap += 1;
                    });
                  }
                },
                onStepCancel: () {
                  if (_currentStap != 0) {
                    setState(() {
                      _currentStap -= 1;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
