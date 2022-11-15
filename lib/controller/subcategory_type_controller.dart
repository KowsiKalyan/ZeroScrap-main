import 'dart:developer';

import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/controller/materialquntity_gst_controller.dart';
import 'package:zero_scarp/model/materialTypeiwthGst_response.dart';
import 'package:zero_scarp/service/materialquantity_gst_service.dart';

import '../model/subctegory_type_response.dart';
import '../service/subcategory_type_service.dart';

class SubCategoryTypeController extends GetxController {
  RxBool subcategorytypeLoad = true.obs;
  List<SubCategoryTypeModel> _subCategorytypemodel = [];
  List<SubCategoryTypeModel> get getsubcategorytype => _subCategorytypemodel;
  RxList<int> subCategoryList = <int>[].obs;

  var subcategorytypeservice = SubCategoryTypeService();

  RxBool materialtypewithGstLoad = true.obs;
  List<MaterialTypeGstModel> _materialtypewithGst = [];

  var qty = <int>[].obs;
  var price = <double>[].obs;

  List<MaterialTypeGstModel> get getmaterialtypewithGst => _materialtypewithGst;
  var materialquantitywithgst = MaterialQuantityWithGstService();
  Future subCategorytypeController({subCategoryID}) async {
    try {
      var response = await subcategorytypeservice.subCategoryTypeService(
          subcategoryId: subCategoryID);
      log(response.toString());
      if (response != null) {
        qty.clear();
        price.clear();
        _subCategorytypemodel.add(response);
        subCategoryList.clear();
        for (var i = 0; i < response.data!.materialType!.length; i++) {
          log('iii');
          log(i.toString());
          qty.add(0);
          price.add(0.0);
          // subCategoryList
          //     .add(response.data!.materialType![i].materialSubtype![0].price!);
        }

        subcategorytypeLoad(false);
      } else {
        subcategorytypeLoad(false);
      }
    } catch (e) {
      ;
      rethrow;
    }
  }
  //material quantity controller----

  Future materialQuantityGstdController({materialId, quantity, index}) async {
    materialtypewithGstLoad(true);
    try {
      var response =
          await materialquantitywithgst.materialQuantityWithGstservice(
              materialId: materialId, quantity: quantity);
      log(response.toString());
      if (response != null) {
        _materialtypewithGst.clear();
        _materialtypewithGst.add(response);
        // _materialtypewithGst[0].data!.materialType![0].gstamount = index;
        price[index] = double.parse(_materialtypewithGst[0]
            .data!
            .materialType![0]
            .gstamount
            .toString());

        // quantity[index] =
        //     _materialtypewithGst[0].data!.materialType![0].quantity.toString();
        log('dataa${_materialtypewithGst[0].data!.materialType![0].gstamount.toString()}');

        log('price---------${price.length}');
        log('qty---------${qty.length}');
        // _materialtypewithGst[index] = '0';
        //Get.to(DetailsScreen());

        materialtypewithGstLoad(false);
      } else {
        materialtypewithGstLoad(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
