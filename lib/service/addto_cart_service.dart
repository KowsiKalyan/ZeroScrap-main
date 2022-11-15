import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:zero_scarp/allpackages.dart';

import '../model/addto_cart_response.dart';

class AddToCartService {
  Future addToCartService({typeId, qty}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString(Constants.authToken);
    try {
      var data = {"type_id": typeId ?? '', "qty": qty ?? ''};
      var response = await http.post(Uri.parse(Urls.addtoCart),
          headers: {'Authorization': 'Bearer $token'}, body: data);

      var jsonresponse = jsonDecode(response.body);
      log(jsonresponse.toString());

      if (response.statusCode == 200) {
        if (jsonresponse['status'] == 'success') {
          return AddToCartModel.fromJson(jsonresponse);
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
