import 'package:flutter/cupertino.dart';

class BottomSheetProvider extends ChangeNotifier {
  List<bool> modeOfPayment = [
    true,
    false,
    false,
  ];

  changeButton(int index) {
    for (var i = 0; i < modeOfPayment.length; i++) {
      if (i == index) {
        modeOfPayment[index] = true;
      } else {
        modeOfPayment[i] = false;
      }
    }
    notifyListeners();
  }
}
