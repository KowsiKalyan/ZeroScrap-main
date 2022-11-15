import 'dart:developer';

import 'package:zero_scarp/allpackages.dart';

import 'package:zero_scarp/model/subcategory_response.dart';

import '../service/sub_category_service.dart';

class SubCategoryController extends GetxController {
  RxBool subcategoryLoad = true.obs;
  List<SubCategoryModel> _subCategorymodel = [];
  List<SubCategoryModel> get getsubcategory => _subCategorymodel;
  var subcategoryservice = SubCategoryService();
  Future subCategoryController({categoryId}) async {
    try {
      var response =
          await subcategoryservice.subCategoryService(categoryId: categoryId);
      log(response.toString());
      if (response != null) {
        _subCategorymodel.add(response);

        subcategoryLoad(false);
      } else {
        subcategoryLoad(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
