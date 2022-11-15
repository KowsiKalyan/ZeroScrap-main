import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:zero_scarp/allpackages.dart';

import '../model/materialTypeiwthGst_response.dart';

class MaterialQuantityWithGstService {
  Future materialQuantityWithGstservice({materialId, quantity}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString(Constants.authToken);
    var data = {"materialId": materialId ?? '', "quantity": quantity ?? ''};
    try {
      var response = await http.post(Uri.parse(Urls.getmaterialtypeGst),
          headers: {'Authorization': 'Bearer $token'}, body: data);

      var jsonresponse = jsonDecode(response.body);
      log('response----${jsonresponse}');
      if (response.statusCode == 200) {
        if (jsonresponse['status'] == 'success') {
          return MaterialTypeGstModel.fromJson(jsonresponse);
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
}
