import 'package:flutter/cupertino.dart';

extension ContextExtension on BuildContext {
  double dynamicHeight(double value) => MediaQuery.of(this).size.height * value;
  double dynamicWeight(double value) => MediaQuery.of(this).size.width * value;
}