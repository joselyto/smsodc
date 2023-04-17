import 'package:flutter/material.dart';
import 'package:smsodc/pages/IntroPage.dart';
import 'package:smsodc/pages/message.dart';

import '../utils/Routes.dart';
import '../utils/RoutesManager.dart';




class MonApplication extends StatelessWidget {
  const MonApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManager.route,
      initialRoute: Routes.IntroPageRoutes,

    );
  }
}