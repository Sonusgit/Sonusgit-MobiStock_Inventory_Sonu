import 'package:flutter/material.dart';
import 'package:mobistock/views/sales_management/widgets/sales_widgets.dart';

class SellProduct5 extends StatelessWidget {
  const SellProduct5({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _paymentSummarySection(),
            const SizedBox(height: 20.0),
            _priceBreakdownSection(),
            const SizedBox(height: 20.0),
            _priceBreakdownSection(),
          ],
        ),
      ),
    );
  }
}

Widget _containerWrapper({required Widget child}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.08),
      borderRadius: BorderRadius.circular(12.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 8,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: child,
  );
}

Widget _paymentSummarySection() {
  return _containerWrapper(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SalesWidgets.salesHeading(text: "Product Details"),
        const SizedBox(height: 16.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _infoGroup([
                "Company: Apple",
                "Variant: 8GB / 256GB",
                "Model: iPhone15 Pro",
              ]),
            ),
            const SizedBox(width: 12.0),
            Expanded(
              child: _infoGroup([
                "Model: iPhone15 Pro",
                "Color: Space Grey",
              ]),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _priceBreakdownSection() {
  return _containerWrapper(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SalesWidgets.salesHeading(text: "Price Breakdown"),
        const SizedBox(height: 16.0),
        Row(
          children: [
            Expanded(
              child: _infoGroup([
                "Base Price:",
                "GST:",
                "Accessories:",
                "Discount:",
                "Final Total:",
              ], highlightLast: true),
            ),
            const SizedBox(width: 12.0),
            Expanded(
              child: _infoGroup([
                "₹79,999",
                "₹14,400",
                "₹2,000",
                "-₹5,000",
                "₹91,399",
              ], highlightLast: true),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _infoGroup(List<String> texts, {bool highlightLast = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: List.generate(texts.length, (index) {
      final isLast = highlightLast && index == texts.length - 1;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: Text(
          texts[index],
          style: TextStyle(
            fontSize: isLast ? 18 : 15,
            fontWeight: isLast ? FontWeight.w600 : FontWeight.w500,
            color: Colors.white.withOpacity(isLast ? 1 : 0.9),
          ),
        ),
      );
    }),
  );
}
