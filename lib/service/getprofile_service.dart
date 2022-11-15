import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/model/getProfile_response.dart';

import '../model/profileUpdate_city_response.dart';
import '../model/profile_edit_response.dart';
import '../model/profileupdate_state_response.dart';

class GetProfileService {
  Future getProfileService() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString(Constants.authToken);
    log('token----${token}');
    log(Urls.getprofile.toString());
    try {
      var response = await http.post(
        Uri.parse(Urls.getprofile),
        headers: {'Authorization': 'Bearer $token'},
      );
      log("out--->${response.body}");
      var jsonresponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        if (jsonresponse['status'] == 'success') {
          return ProfileModel.fromJson(jsonresponse);
        } else {
          Fluttertoast.showToast(msg: jsonresponse['message'].toString());
          return null;
        }
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
  //

  Future prodileUpdateService(
      {userName,
      mobileNumber,
      companyName,
      gstNumber,
      address,
      street,
      state,
      city,
      pincode,
      email}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString(Constants.authToken);
    print('enteringggg');
    var data = {
      "userName": userName ?? '',
      "mobileNumber": mobileNumber ?? '',
      "companyName": companyName ?? '',
      "gstNumber": gstNumber ?? '',
      "address": address ?? '',
      "street": street ?? '',
      "state": state ?? '',
      "city": city ?? '',
      "pincode": pincode ?? '',
      "email_id": email ?? ''
    };
    log(data.toString());
    log(data.toString());
    try {
      var response = await http.post(Uri.parse(Urls.getprofileEdit),
          headers: {'Authorization': 'Bearer $token'}, body: data);
      log(response.body);
      var jsonresponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        if (jsonresponse['status'] == 'success') {
          Fluttertoast.showToast(msg: jsonresponse['message'].toString());
          return ProfileUpdateModel.fromJson(jsonresponse);
        } else {
          Fluttertoast.showToast(msg: jsonresponse['message'].toString());
          return null;
        }
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
  //state and city

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
