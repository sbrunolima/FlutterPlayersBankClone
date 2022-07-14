import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/start_screen.dart';
import './screens/password_screen.dart';
import 'settings_screen/change_password_screen.dart';
import '../screens/account_initial_screen.dart';
import './screens/screens_loader.dart';
import 'settings_screen/settings_screen.dart';
import 'settings_screen/user_data_screen.dart';
import './settings_screen/notifications_screen.dart';
import './settings_screen/privacy_police_screen.dart';
import 'settings_screen/credit_card_contract_screen.dart';
import './settings_screen/open_banking_screen.dart';
import './settings_screen/change_payment_date_screen.dart';
import './settings_screen/password_visualization_screen.dart';
import './settings_screen/request_new_card_screen.dart';
import './settings_screen/track_card_screen.dart';
import './settings_screen/digital_account_data_screen.dart';
import 'settings_screen/settings_pix_space_screen.dart';
import './settings_screen/income_screen.dart';
import './settings_screen/user_terms_screen.dart';
import './settings_screen/cancel_account_screen.dart';
import './pix/pix_transfer_screen.dart';
import './pix/receive_pix_screen.dart';
import './pix/pix_copy_paste_screen.dart';
import './help/help_screen.dart';
import './help/help_limit_screen.dart';
import './help/help_fatura_screen.dart';
import './help/help_payment_screen.dart';
import './help/help_block_unblock_screen.dart';
import './help/help_cancel_screen.dart';
import './help/help_more_options.dart';
import './help/help_phone_screen.dart';
import 'help/help_frequent_questions_screen.dart';
import './wallet/wallet_screen.dart';
import './wallet/wallet_password_screen.dart';
import './wallet/phisical_card_screen.dart';
import './inicial_page_widget/initial_page_pix_screen.dart';
import './inicial_page_widget/initial_page_payments_screen.dart';
import './inicial_page_widget/initial_page_ravenue_screen.dart';
import 'inicial_page_widget/initial_actual_bill_screen.dart';
import 'inicial_page_widget/initial_available_limit_screen.dart';
import '../inicial_page_widget/initial_page_phisical_card_screen.dart';
import './inicial_page_widget/initial_request_card_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      title: 'Bank Clone',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: StartScreen(),
      routes: {
        ScreensLoader.routeName: (ctx) => ScreensLoader(),
        StartScreen.routeName: (ctx) => StartScreen(),
        PasswordScreen.routeName: (ctx) => PasswordScreen(),
        ChangePasswordScreen.routeName: (ctx) => ChangePasswordScreen(),
        AccountInitialScreen.routeName: (ctx) => AccountInitialScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
        UserDataScreen.routeName: (ctx) => UserDataScreen(),
        NotificationsScreen.routeName: (ctx) => NotificationsScreen(),
        PrivacyPoliceScreen.routeName: (ctx) => PrivacyPoliceScreen(),
        CreditCardContractScreen.routeName: (ctx) => CreditCardContractScreen(),
        OpenBankingScreen.routeName: (ctx) => OpenBankingScreen(),
        PaymentDateScreen.routeName: (ctx) => PaymentDateScreen(),
        PasswordVisualScreen.routeName: (ctx) => PasswordVisualScreen(),
        RequestNewCardScreen.routeName: (ctx) => RequestNewCardScreen(),
        TrackCardScreen.routeName: (ctx) => TrackCardScreen(),
        DigitalAccountDataScreen.routeName: (ctx) => DigitalAccountDataScreen(),
        SettingsPixSpaceScreen.routeName: (ctx) => SettingsPixSpaceScreen(),
        IncomeScreen.routeName: (ctx) => IncomeScreen(),
        UserTermsScreen.routeName: (ctx) => UserTermsScreen(),
        CancelAccountScreen.routeName: (ctx) => CancelAccountScreen(),
        PixTransferScreen.routeName: (ctx) => PixTransferScreen(),
        ReceivePixScreen.routeName: (ctx) => ReceivePixScreen(),
        PixCopyPasteScreen.routeName: (ctx) => PixCopyPasteScreen(),
        HelpScreen.routeName: (ctx) => HelpScreen(),
        HelpLimitScreen.routeName: (ctx) => HelpLimitScreen(),
        HelpFaturaScreen.routeName: (ctx) => HelpFaturaScreen(),
        HelpPaymentScreen.routeName: (ctx) => HelpPaymentScreen(),
        HelpBlockUnblockScreen.routeName: (ctx) => HelpBlockUnblockScreen(),
        HelpCancelScreen.routeName: (ctx) => HelpCancelScreen(),
        HelpMoreOptionsScreen.routeName: (ctx) => HelpMoreOptionsScreen(),
        HelpPhoneScreen.routeName: (ctx) => HelpPhoneScreen(),
        FrequentQuestionsScreen.routeName: (ctx) => FrequentQuestionsScreen(),
        WalletScreen.routeName: (ctx) => WalletScreen(),
        WalletPasswordScreen.routeName: (ctx) => WalletPasswordScreen(),
        PhisicalCardScreen.routeName: (ctx) => PhisicalCardScreen(),
        InitialPagePixScreen.routeName: (ctx) => InitialPagePixScreen(),
        InitialPagePaymentsScreen.routeName: (ctx) =>
            InitialPagePaymentsScreen(),
        InitialPageRavenueScreen.routeName: (ctx) => InitialPageRavenueScreen(),
        InitialActualBillScreen.routeName: (ctx) => InitialActualBillScreen(),
        InitialAvailableLimitScreen.routeName: (ctx) =>
            InitialAvailableLimitScreen(),
        InitialPagePhisicalCardScreen.routeName: (ctx) =>
            InitialPagePhisicalCardScreen(),
            InitialRequestNewCardScreen.routeName: (ctx) => InitialRequestNewCardScreen(),
      },
    );
  }
}
