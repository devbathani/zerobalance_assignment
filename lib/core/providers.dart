import 'package:provider/provider.dart';
import 'package:zerobalance_assignment/application/bottom_sheet/bottom_sheet_provider.dart';
import 'package:zerobalance_assignment/application/home_screen/home_sceen_provider.dart';

final List providers = [
  ChangeNotifierProvider<HomeSceenProvider>(
    create: (context) => HomeSceenProvider(),
  ),
  ChangeNotifierProvider<BottomSheetProvider>(
    create: (context) => BottomSheetProvider(),
  ),
];
