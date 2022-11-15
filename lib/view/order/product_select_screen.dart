import 'dart:developer';

import 'package:zero_scarp/allpackages.dart';

import '../../controller/addto_cart_controller.dart';
import '../../controller/materialquntity_gst_controller.dart';
import '../../controller/subcategory_controller.dart';
import '../../controller/subcategory_type_controller.dart';

class ProductSelectScreen extends StatefulWidget {
  String? subcategoryId;
  ProductSelectScreen({Key? key, this.subcategoryId}) : super(key: key);

  @override
  State<ProductSelectScreen> createState() => _ProductSelectScreenState();
}

class _ProductSelectScreenState extends State<ProductSelectScreen> {
  SubCategoryTypeController subCategorytypeController =
      Get.put(SubCategoryTypeController());

  AddtoCartController addtoCartController = Get.put(AddtoCartController());
  @override
  void initState() {
    subCategorytypeController.subCategorytypeController(
        subCategoryID: widget.subcategoryId.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (subCategorytypeController.subcategorytypeLoad.value) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else if (subCategorytypeController.getsubcategorytype.isEmpty) {
        return const Scaffold(
          body: Center(
            child: Text('No Data Found'),
          ),
        );
      } else {
        return Scaffold(
          backgroundColor: const Color(0xff5EBDB7),
          appBar: AppBar(
              elevation: 10,
              backgroundColor: const Color(0xff283736),
              centerTitle: true,
              leading: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    'assets/images/back.png',
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              title: Text(
                'PAPER WASTE',
                style: apptitle,
              )),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/pic3.png',
                  width: 100.00.wp,
                  fit: BoxFit.fitWidth,
                ),
                SelectPaperType(id: widget.subcategoryId.toString()),
                SizedBox(
                  width: 100.00.wp,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20.00,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SmallActionButton(
                              press: () {
                                Navigator.of(context).pop();
                              },
                              elevationvalue: 0,
                              text: 'CANCEL',
                              bordercolor: Colors.white,
                              bgcolor: appcolor,
                              style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      fontSize: 11.00.sp,
                                      letterSpacing: 1.5,
                                      color: screenbackground,
                                      fontWeight: FontWeight.w500)),
                            ),
                            SmallActionButton(
                              press: () {
                                print('clickk');

                                addtoCartController.addtoCartController(
                                    typeId: 1.toString(), qty: 2.toString());

                                // materialQuantityGstController
                                //     .materialQuantityGstController(
                                //         materialId: subCategorytypeController
                                //             .getsubcategorytype[0]
                                //             .data!
                                //             .materialType![0]
                                //             .materialId!
                                //             .toString(),
                                //         quantity: 1.toString());
                                // Get.to(const DetailsScreen());
                              },
                              elevationvalue: 0,
                              text: 'CONTINUE',
                              bordercolor: const Color(0xff283736),
                              bgcolor: const Color(0xff283736),
                              style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      fontSize: 11.00.sp,
                                      letterSpacing: 1.5,
                                      color: screenbackground,
                                      fontWeight: FontWeight.w500)),
                            )
                          ]),
                      const SizedBox(
                        height: 20.00,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        );
      }
    });
  }
}
