import 'package:get/get.dart';
import '../../core/imports.dart';
import 'routes.dart';

abstract class Pages {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.initial,
      page: () => HomeView(),
      transitionDuration: const Duration(milliseconds: 100),
      transition: Transition.fade,
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginView(),
      transitionDuration: const Duration(milliseconds: 100),
      transition: Transition.fade,
    ),
  ];
}
