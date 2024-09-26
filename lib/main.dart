import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mec/core/utils/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WizWordsApp());
}

class WizWordsApp extends StatelessWidget {
  const WizWordsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        getPages: AppRoutes.routes,
      ),
    );
  }
}
