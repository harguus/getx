import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/services/routes/pages.dart';
import 'package:getx_example/src/services/routes/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: Pages.pages,
      initialRoute: Routes.initial,
    );
  }
}
