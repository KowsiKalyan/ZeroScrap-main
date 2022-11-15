import 'dart:developer';

import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/model/category_response.dart';
import 'package:zero_scarp/model/fill_details_response.dart';

import 'package:zero_scarp/service/fill_details_service.dart';

import '../model/profileUpdate_city_response.dart';
import '../model/profileupdate_state_response.dart';

class FillDetailsController extends GetxController {
  RxBool filldetailsLoad = true.obs;
  List<FillDetailsModel> _filldetailsmodel = [];
  List<FillDetailsModel> get getfilldetailsmodel => _filldetailsmodel;
  var filldetailservice = FillDetailsService();
  TextEditingController userName = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController emailid = TextEditingController();
  TextEditingController companyName = TextEditingController();
  TextEditingController gstNumber = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController street = TextEditingController();

  TextEditingController pincode = TextEditingController();
  RxString withGst = ''.obs;
  RxString withouGst = ''.obs;
  RxString gstnum = ''.obs;
  RxString state = ''.obs;
  RxString city = ''.obs;
  RxBool isStateLoading = true.obs;
  RxBool isCityLoading = true.obs;
  RxString orderID = ''.obs;
  List<ProfileUpdatStateModel> _profileupdatestate = [];
  List<ProfileUpdatStateModel> get getprofileUpdatestate => _profileupdatestate;
  RxList<ProfileUpdatCityModel> _profileupdateCity =
      <ProfileUpdatCityModel>[].obs;
  RxList<ProfileUpdatCityModel> get getprofileUpdateCity => _profileupdateCity;
  Future fillDetailsController({orderId, amount}) async {
    filldetailsLoad(true);
    try {
      log('enter--------');
      var response = await filldetailservice.fillDetailsService(
          userName: userName.text,
          mobileNumber: mobileNumber.text,
          emailid: emailid.text,
          companyName: companyName.text,
          gstNumber: gstNumber.text,
          address: address.text,
          street: street.text,
          city: city.value,
          state: state.value,
          pincode: pincode.text,
          orderId: orderId,
          amount: amount);
      log('responsedata--------${response}');
      if (response != null) {
        _filldetailsmodel.add(response);
        Get.toNamed('/confirmScreen');

        Fluttertoast.showToast(msg: response.message.toString());
        filldetailsLoad(false);
      } else {
        filldetailsLoad(false);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future getState() async {
    isStateLoading(true);
    try {
      var response = await filldetailservice.profileUpdteStateService();
      log(response.toString());
      if (response != null) {
        print('res---------------$response');
        _profileupdatestate.add(response);
        // if (_profileupdatestate[0].state!.isNotEmpty) {
        //   _profileupdatestate[0]
        //       .state!
        //       .forEach((e) => stateName.add(e.name!.toString()));
        //   print('stateList-->$stateName');
        // }
        isCityLoading(false);
        isStateLoading(false);
      } else {
        isStateLoading(false);
        Get.back();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future getCity({stateId}) async {
    isCityLoading(true);

    try {
      var response =
          await filldetailservice.profileUpdtecityService(stateId: stateId);

      if (response != null) {
        _profileupdateCity.clear();
        _profileupdateCity.add(response);
        // if (_profileupdateCity[0].city!.isNotEmpty) {
        //   _profileupdateCity[0]
        //       .city!
        //       .forEach((element) => cityName.add(element.name.toString()));
        // }

        isCityLoading(false);
      } else {
        isCityLoading(false);
        //Get.back();
      }
    } catch (e) {
      rethrow;
    }
  }
}
