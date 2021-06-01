import 'package:flutter/material.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_components/styles/styles.dart';
import 'package:iupp_core/core/resources/navigation/module_entrypoints.dart';
import 'package:iupp_marketplace_buyer/marketplace_buyer_app.dart';
import 'package:iupp_checkout/checkout_app.dart';

class IuppApp extends MainApp {
  IuppApp() {
    super.registerRouters();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Iupp App',
      theme: iuppTheme,
      navigatorKey: NavigatorService.navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: MARKETPLACE_BUYER_ENTRYPOINT,
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        MarketplaceBuyerApp(),
        CheckoutApp(),
      ];
}
