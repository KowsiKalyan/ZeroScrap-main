import 'dart:developer';

import 'package:zero_scarp/allpackages.dart';

import 'package:zero_scarp/model/getProfile_response.dart';
import 'package:zero_scarp/model/profileupdate_state_response.dart';

import '../model/profileUpdate_city_response.dart';
import '../model/profile_edit_response.dart';
import '../service/getprofile_service.dart';

class ProfileController extends GetxController {
  TextEditingController userName = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController companyName = TextEditingController();
  TextEditingController gstNumber = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController street = TextEditingController();

  TextEditingController pincode = TextEditingController();
  TextEditingController email = TextEditingController();
  var city = ''.obs;

  RxBool isProfileLoad = true.obs;
  List<ProfileModel> _getProfilemodel = [];
  List<ProfileModel> get getProfilemodel => _getProfilemodel;
  //Rx<StateList> state = StateList(id: '', name: 'State').obs;
  RxString state = ''.obs;
  // Rx<StateModel> state = StateModel(id: "", name: "").obs;
  var profileservice = GetProfileService();
  //profile update
  RxBool profileUpdateLoad = true.obs;
  List<ProfileUpdateModel> _profileupdate = [];
  List<ProfileUpdateModel> get getprofileUpdate => _profileupdate;
  //state and city

  List<ProfileUpdatStateModel> _profileupdatestate = [];
  List<ProfileUpdatStateModel> get getprofileUpdatestate => _profileupdatestate;
  RxList<ProfileUpdatCityModel> _profileupdateCity =
      <ProfileUpdatCityModel>[].obs;
  RxList<ProfileUpdatCityModel> get getprofileUpdateCity => _profileupdateCity;
  List<String> stateName = [];
  var cityName = <String>[].obs;
  RxBool generalLoad = true.obs;

  RxBool isStateLoading = true.obs;
  RxBool isCityLoading = true.obs;
  profileController() async {
    try {
      var response = await profileservice.getProfileService();
      if (response != null) {
        _getProfilemodel.add(response);
        // state.value = _getProfilemodel[0].data!.state!;
        // city.value = _getProfilemodel[0].data!.city!;
        isProfileLoad(false);
      } else {
        isProfileLoad(false);
      }
    } catch (e) {
      rethrow;
    }
  }

  //update
  Future profileUpdateController({context}) async {
    if (userName.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter user name');
    } else if (mobileNumber.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter mobile number');
    } else if (email.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter emailID');
    } else if (companyName.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter companyname');
    } else if (gstNumber.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter gstnumbr');
    } else if (address.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter address');
    } else if (street.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter street');
    } else if (pincode.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter state');
    } else if (city.value.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter city');
    } else if (state.value.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter pincode');
    } else {
      if (profileUpdateLoad.value) {
        _loadingBar(context);
      }
      try {
        var response = await profileservice.prodileUpdateService(
            userName: userName.text,
            mobileNumber: mobileNumber.text,
            companyName: companyName.text,
            gstNumber: gstNumber.text,
            address: address.text,
            state: state.value,
            street: street.text,
            city: city.value,
            pincode: pincode.text,
            email: email.text);

        if (response != null) {
          // _profileupdate.add(response);
          Get.back();

          profileUpdateLoad(false);
          Get.back();
        } else {
          profileUpdateLoad(false);
        }
      } catch (e) {
        rethrow;
      }
    }
  }

  //state
  Future getState() async {
    isStateLoading(true);
    try {
      var response = await profileservice.profileUpdteStateService();
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
        //  Get.back();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future getCity({stateId}) async {
    isCityLoading(true);

    try {
      var response =
          await profileservice.profileUpdtecityService(stateId: stateId);

      if (response != null) {
        _profileupdateCity.clear();
        _profileupdateCity.add(response);
        // if (_profileupdateCity[0].city!.isNotEmpty) {
        //   _profileupdateCity[0]
        //       .city!
        //       .forEach((element) => cityName.add(element.name.toString()));
        // }
        log('city_res--->$cityName');
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

void _loadingBar(BuildContext ctx) {
  showDialog(
      barrierDismissible: false,
      context: ctx,
      builder: (BuildContext context) {
        return const Center(
          child: Loader(),
        );
      });
}

class StateModel {
  String? name;
  String? id;
  StateModel({this.id, this.name});
}
