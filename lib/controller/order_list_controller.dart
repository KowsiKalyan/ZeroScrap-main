import 'package:zero_scarp/allpackages.dart';

import 'package:zero_scarp/model/order_list_response.dart';

import 'package:zero_scarp/service/order_list_service.dart';

class OrderListController extends GetxController {
  RxBool orderlistLoad = true.obs;
  List<OrderListModel> _orderlistmodel = [];
  List<OrderListModel> get getorderList => _orderlistmodel;
  var orderListservice = OrderListService();
  Future orderListController({orderId}) async {
    try {
      var response = await orderListservice.orderListService(orderId: orderId);
      if (response != null) {
        _orderlistmodel.add(response);
        orderlistLoad(false);
      } else {
        orderlistLoad(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
