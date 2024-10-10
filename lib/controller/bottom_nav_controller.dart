import 'package:get/get.dart';

class BottomNavController extends GetxController{
  RxInt index = 0.obs;

  void changeIndex(int newIndex){
    index.value = newIndex;
  }
}