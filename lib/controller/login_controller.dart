import 'dart:developer';

import 'package:zero_scarp/allpackages.dart';

class LoginController extends GetxController {
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();
  List<LoginModel> _loginmodel = [];
  List<LoginModel> get getloginmodel => _loginmodel;
  RxBool isloginLoad = true.obs;
  //otp

  var loginService = LoginService();
  Future loginController({context}) async {
    SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    if (mobile.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter mobile number');
    } else if (password.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter password');
    } else {
      isloginLoad(true);
      if (isloginLoad.value) {
        _loadingBar(context);
      }

      try {
        var response = await loginService.loginService(
            mobile: mobile.text, password: password.text);

        if (response != null) {
          _sharedPreferences.setString(Constants.authToken, response.token!);
          _sharedPreferences.setString(
              Constants.userName, response.data!.name!);
          _sharedPreferences.setString(
              Constants.phoneno, response.data!.phoneNo.toString());
          var mobile = _sharedPreferences.getString(Constants.phoneno);
          log('mobile------${mobile.toString()}');

          Get.toNamed('/home');

          isloginLoad(false);
        } else {
          Fluttertoast.showToast(msg: response!.message!);
          Get.back();
        }
      } catch (e) {
        rethrow;
      }
    }
  }

  // logout
  Future logout() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    try {
      sharedPreferences.clear().then((value) {
        mobile.clear();
        password.clear();
        // Get.back();
        Get.offNamed('/login');
      });
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
