import 'package:zero_scarp/allpackages.dart';

import 'package:zero_scarp/model/orderlist_gst_response.dart';

import '../service/orderlist_gst_service .dart';

class OrderListGstController extends GetxController {
  RxBool orderlistgstLoad = true.obs;
  List<OrderListGstModel> _orderlistgstmodel = [];
  List<OrderListGstModel> get getordergstList => _orderlistgstmodel;
  var orderListGstservice = OrderListGstService();
  Future orderListGstController({orderId, gst}) async {
    try {
      var response = await orderListGstservice.orderListGstService(
          orderId: orderId, gst: gst);
      if (response != null) {
        _orderlistgstmodel.add(response);
        orderlistgstLoad(false);
        // Get.back();
      } else {
        orderlistgstLoad(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
