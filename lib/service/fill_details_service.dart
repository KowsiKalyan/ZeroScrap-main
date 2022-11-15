import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:zero_scarp/allpackages.dart';

import '../model/fill_details_response.dart';
import '../model/profileUpdate_city_response.dart';
import '../model/profileupdate_state_response.dart';

class FillDetailsService {
  Future fillDetailsService(
      {userName,
      mobileNumber,
      emailid,
      companyName,
      gstNumber,
      address,
      street,
      city,
      pincode,
      state,
      orderId,
      amount}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString(Constants.authToken);
    try {
      var data = {
        "userName": userName ?? '',
        "mobileNumber": mobileNumber ?? '',
        "email_id": emailid ?? '',
        "companyName": companyName ?? '',
        "address": address ?? '',
        "street": street ?? '',
        "city": city ?? '',
        "pincode": pincode ?? '',
        "state": state ?? '',
        "order_id": orderId ?? '',
        "amount": amount ?? ''
      };
      log('data-----${data.toString()}');
      var response = await http.post(Uri.parse(Urls.filldetails),
          headers: {'Authorization': 'Bearer $token'}, body: data);
      log('responseeeefilldata-------${response.body.toString()}');

      var jsonresponse = jsonDecode(response.body);
      log('jsonrespose----${jsonresponse}');

      if (response.statusCode == 200) {
        if (jsonresponse['status'] == 'success') {
          return FillDetailsModel.fromJson(jsonresponse);
        } else {
          Fluttertoast.showToast(msg: jsonresponse['message'].toString());
          Get.back();
        }
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future profileUpdteStateService() async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var token = sharedPreferences.getString(Constants.authToken);
      var response = await http.post(
        Uri.parse(Urls.getprofileEditState),
        headers: {'Authorization': 'Bearer $token'},
      );

      var jsonresponse = jsonDecode(response.body);
      log("responseeeee${response.body.toString()}");

      if (response.statusCode == 200) {
        return ProfileUpdatStateModel.fromJson(jsonresponse);
      } else {
        Fluttertoast.showToast(msg: jsonresponse['message'].toString());
      }
    } catch (e) {
      rethrow;
    }
  }

  Future profileUpdtecityService({stateId}) async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var token = sharedPreferences.getString(Constants.authToken);
      var data = {"state_id": stateId};
      var response = await http.post(Uri.parse(Urls.getprofileEditCity),
          headers: {'Authorization': 'Bearer $token'}, body: data);

      var jsonresponse = jsonDecode(response.body);
      log(response.body.toString());

      if (response.statusCode == 200) {
        return ProfileUpdatCityModel.fromJson(jsonresponse);
      } else {
        Fluttertoast.showToast(msg: jsonresponse['message'].toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}
