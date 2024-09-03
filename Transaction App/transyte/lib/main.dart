import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:transyte/Controllers/card_element_controller.dart';
import 'package:transyte/Controllers/contacts_controller.dart';
import 'package:transyte/Controllers/general_setting_controller.dart';
import 'package:transyte/Controllers/nav_bar_controller.dart';
import 'package:transyte/Controllers/notification_controller.dart';
import 'package:transyte/Controllers/other_menu_controller.dart';
import 'package:transyte/Controllers/pay_types_controller.dart';
import 'package:transyte/Controllers/phone_number_controller.dart';
import 'package:transyte/Controllers/qr_controller.dart';
import 'package:transyte/Controllers/send_again_user_controller.dart';
import 'package:transyte/Controllers/set_password_controller.dart';
import 'package:transyte/Controllers/setting_controller.dart';
import 'package:transyte/Controllers/short_cuts_controller.dart';
import 'package:transyte/Controllers/transactiobn_history_controller.dart';
import 'package:transyte/Controllers/transfer_radio_controller.dart';
import 'package:transyte/Controllers/verification_status_controller.dart';

import 'package:transyte/View/Splash%20Screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PhoneNumberController()),
        ChangeNotifierProvider(create: (context) => SetPasswordController()),
        Provider(create: (context) => PayTypesController()),
        Provider(create: (context) => SendAgainUserController()),
        Provider(create: (context) => TransactionHistoryController()),
        Provider(create: (context) => ShortCutsController()),
        Provider(create: (context) => OtherMenuController()),
        ChangeNotifierProvider(create: (context) => TransferRadioController()),
        Provider(create: (context) => ContactsController()),
        Provider(create: (context) => NavBarController()),
        ChangeNotifierProvider(create: (context) => NotificationController()),
        Provider(create: (context) => VerificationStatusController()),
        ChangeNotifierProvider(create: (context) => GeneralSettingController()),
        Provider(create: (context) => QrController()),
        Provider(create: (context) => CardElementController()),
        ChangeNotifierProvider(create: (context) => SettingController()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
