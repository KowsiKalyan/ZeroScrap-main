import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/model/addto_cart_response.dart';
import 'package:zero_scarp/service/addto_cart_service.dart';

class AddtoCartController extends GetxController {
  RxBool addtocartLoad = true.obs;
  List<AddToCartModel> _addtocartmodel = [];
  List<AddToCartModel> get getorderList => _addtocartmodel;
  var addtoService = AddToCartService();
  RxString orderID = ''.obs;
  Future addtoCartController({typeId, qty}) async {
    try {
      var response =
          await addtoService.addToCartService(typeId: typeId, qty: qty);
      if (response != null) {
        _addtocartmodel.add(response);
        // _addtocartmodel.forEach((element) {
        //   orderID.value = element.orderId.toString();
        //   print(orderID.value);
        // });
        orderID.value = _addtocartmodel[0].orderId!.toString();
        addtocartLoad(false);
        Get.toNamed('/detailsScreen');
      } else {
        addtocartLoad(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
