import 'dart:developer';

import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/service/order_placed_service.dart';

import '../model/order_placed_response.dart';

class OrderPlacedController extends GetxController {
  RxBool orderplacedLoad = true.obs;
  List<OrderPlacedModel> _orderplacedModel = [];
  List<OrderPlacedModel> get getorderplacedModel => _orderplacedModel;

  var orderplacedService = OrderPlacedService();

  Future orderPlacedController({orderId}) async {
    try {
      var response =
          await orderplacedService.orderPlacedService(orderId: orderId);
      log('clickk');
      if (response != null) {
        _orderplacedModel.add(response);
        Get.toNamed('/orderPlaced');

        orderplacedLoad(false);
      } else {
        orderplacedLoad(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
