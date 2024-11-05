import 'package:get/get.dart';

class PurchaseController extends GetxController {
  // A map to store the active status of each item by index
  RxMap<int, bool> activeStatus = <int, bool>{}.obs;

  // Toggle the active status of a specific item
  void toggleActiveStatus(int index) {
    activeStatus[index] = !(activeStatus[index] ?? false);
  }
}
