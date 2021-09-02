import 'package:get/get.dart';

class Controller extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update(['teste']); // perceba aqui!
  }

  @override
  void onInit() {
    // chamado imediatamente após o widget ser alocado em memória
    // fetchApi();
    print("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    // chamado depois que o widget é renderizado na tela
    // showIntroDialog();
    print("onReady");
    super.onReady();
  }

  @override
  void onClose() {
    // chamado pouco antes do controlador ser excluído da memória
    // closeStream();
    print("onClose");
    super.onClose();
  }
}
