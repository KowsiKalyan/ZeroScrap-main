import 'dart:developer';

import 'package:zero_scarp/allpackages.dart';

import '../model/confirm_details_response.dart';
import '../service/confirm_your_details_service.dart';

class ConfrimDetailsController extends GetxController {
  RxBool confrimdetailsLoad = true.obs;
  List<ConfirmDetailsModel> _confirmdetailsModel = [];
  List<ConfirmDetailsModel> get getconfirmdetails => _confirmdetailsModel;

  var confirmService = ConfirmYourDetailsService();
  RxString orderID = ''.obs;
  RxString getvalue = ''.obs;
  Future confrimDetailsController({orderId}) async {
    try {
      var response =
          await confirmService.confirmYourDetailsService(orderId: orderId);
      if (response != null) {
        _confirmdetailsModel.add(response);
        _confirmdetailsModel.map(
          (e) {
            print('printuueyyy');
            getvalue.value = e.userDetails.toString();
            print('printuuu');
            log('ccccccccccccc${getvalue.value.toString()}');
          },
        );

        confrimdetailsLoad(false);
      } else {
        confrimdetailsLoad(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
