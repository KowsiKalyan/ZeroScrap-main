import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:zero_scarp/allpackages.dart';

import '../model/confirm_details_response.dart';

class ConfirmYourDetailsService {
  Future confirmYourDetailsService({orderId}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString(Constants.authToken);
    try {
      var data = {"order_id": orderId ?? ''};
      var response = await http.post(Uri.parse(Urls.confirmyourDetails),
          headers: {'Authorization': 'Bearer $token'}, body: data);

      var jsonresponse = jsonDecode(response.body);
      log(jsonresponse.toString());

      if (response.statusCode == 200) {
        if (jsonresponse['status'] == 'success') {
          return ConfirmDetailsModel.fromJson(jsonresponse);
        } else {
          Fluttertoast.showToast(msg: jsonresponse['message'].toString());
        }
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
