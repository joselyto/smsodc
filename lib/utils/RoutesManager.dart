
import 'package:flutter/material.dart';
import 'package:smsodc/pages/DetailsMessages.dart';
import 'package:smsodc/pages/IntroPage.dart';

import '../pages/message.dart';
import 'Routes.dart';

class RoutesManager{
  static Route route(RouteSettings r){
    switch(r.name){
      case Routes.IntroPageRoutes:

        return MaterialPageRoute(builder: (_)=>IntroPage());

      case Routes.MessageODCRoutes:
        return MaterialPageRoute(builder: (_)=>MessageODC());

      case Routes.DetailsMessages:

        return MaterialPageRoute(builder: (_)=>DetailsMessages());

      default:
        return MaterialPageRoute(builder: (_)=>MessageODC());
    }

  }
}