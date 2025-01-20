import 'package:get/get.dart';

class PreferencesController extends GetxController {
  var isNotificationEnabled1 = true.obs;
  var isNotificationEnabled2 = true.obs;
  void toggleNotification1(bool value) {
    isNotificationEnabled1.value = value;
  }

    void toggleNotification2(bool value) {
    isNotificationEnabled2.value = value;
  }
}