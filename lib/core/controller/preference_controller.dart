import 'package:get/get.dart';

class PreferencesController extends GetxController {
  var isNotificationEnabled = true.obs;

  void toggleNotification(bool value) {
    isNotificationEnabled.value = value;
  }
}