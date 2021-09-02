import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/controller/controller_example.dart';
import 'package:getx_example/src/controller/controller_getx.dart';
import 'package:getx_example/src/services/routes/routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<Controller>(
          id: "teste",
          init: Controller(),
          builder: (value) => Text('${value.counter}'),
        ),
      ),
      body: Column(
        children: [
          Text("GetxController"),
          Center(
            child: GetBuilder<Controller>(
              init: Controller(),
              builder: (value) => ElevatedButton(
                onPressed: () => value.increment(),
                child: Text("+"),
              ),
            ),
          ),
          GetBuilder<Controller>(
            id: "teste1",
            builder: (value) => Text('${value.counter}'),
          ),
          Text("GetX com observer"),
          GetX<ControllerGetx>(
            init: ControllerGetx(),
            builder: (val) => Column(
              children: [
                Text('${val.counter}'),
                ElevatedButton(
                  onPressed: () => val.increment(),
                  child: Text("+"),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.login, arguments: [
              {"name": "teste", "value": 2}
            ]),
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
