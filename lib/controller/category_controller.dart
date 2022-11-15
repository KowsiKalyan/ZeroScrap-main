import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/model/category_response.dart';
import 'package:zero_scarp/service/category_service.dart';

class CategoryController extends GetxController {
  RxBool categoryLoad = true.obs;
  List<CategoryModel> _categorymodel = [];
  List<CategoryModel> get getcategory => _categorymodel;
  var categoryservice = CategoryService();
  Future categoryController() async {
    try {
      var response = await categoryservice.categoryService();
      if (response != null) {
        _categorymodel.add(response);
        categoryLoad(false);
      } else {
        categoryLoad(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
