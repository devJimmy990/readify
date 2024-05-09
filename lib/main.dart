import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:readify/src/app.dart';
import 'package:readify/src/common/common.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:sembast/sembast.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocalStorage();
  await DatabaseConfig.init(StoreRef<dynamic, dynamic>.main());
  if (kIsWeb) usePathUrlStrategy();
  runApp(
    ProviderScope(
      observers: [RiverpodObserver()],
      child: MyApp(),
    ),
  );
}
