import 'dart:developer';

import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/controller/fill_details_controller.dart';

import '../../controller/materialquntity_gst_controller.dart';
import '../../controller/subcategory_type_controller.dart';

class SelectPaperType extends StatefulWidget {
  String? id;
  SelectPaperType({Key? key, this.id}) : super(key: key);

  @override
  State<SelectPaperType> createState() => _SelectPaperTypeState();
}

class _SelectPaperTypeState extends State<SelectPaperType> {
  SubCategoryTypeController subCategorytypeController =
      Get.put(SubCategoryTypeController());

  FillDetailsController fillDetailsController =
      Get.put(FillDetailsController());
  var selectedindex = 0;
  int gridIndex = 0;
  final _distanceController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _distanceController.text = "1";
    //   _selectedAnimals5 = _area;
  }

  var names = [
    'News Paper',
    'Magazine',
    'Note Book',
    'Cartoon Book',
    'White Paper'
  ];
  var language = ['English', 'Tamil', 'Both'];
  var singlequantityamount = [
    '1kg - Rs. 80',
    '1kg - Rs. 80',
    '1kg - Rs. 60',
    '1kg - Rs. 50',
    '1kg - Rs. 40'
  ];
  var elements;
  var store;

  var selectlanguage = 0;
  int amount = 100;
  var result;
  var output;
  // funct(){
  //   if(selectedindex==0){
  //     output=selectedindex
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (subCategorytypeController.subcategorytypeLoad.value) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else if (subCategorytypeController.getsubcategorytype.isEmpty) {
        return Center(
          child: Text('No Data Found'),
        );
      } else {
        return Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0))),
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 1.00.hp,
                  ),
                  Text('Select Paper Type',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              fontSize: 14.00.sp,
                              color: const Color(0xff263238),
                              fontWeight: FontWeight.w600))),
                  SizedBox(
                    height: 2.00.hp,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: subCategorytypeController
                          .getsubcategorytype[0].data!.materialType!.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        var data = subCategorytypeController
                            .getsubcategorytype[0].data!.materialType![index];

                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectedindex = index;

                                  log(selectedindex.toString());
                                  log("gggggggg");
                                });
                              },
                              child: Container(
                                height: 5.00.hp,
                                width: 90.00.wp,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: selectedindex == index
                                        ? const Color(0xff455A64)
                                        : const Color(0xffC6C6C6)
                                            .withOpacity(0.2),
                                    border: Border.all(
                                        color: selectedindex == index
                                            ? const Color(0xff455A64)
                                            : const Color(0xffC6C6C6)
                                                .withOpacity(0.2),
                                        width: 1)),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 50.00.wp,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(children: [
                                            Flexible(
                                                child: Text(
                                              data.materialName!.toString(),
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                      fontSize: 11.00.sp,
                                                      color:
                                                          selectedindex == index
                                                              ? Colors.white
                                                              : const Color(
                                                                  0xff969696),
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ))
                                          ]),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 30.00.wp,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Flexible(
                                                        child: Text(
                                                      '1 ${data.unit!.toString()}',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: GoogleFonts.roboto(
                                                          textStyle: TextStyle(
                                                              fontSize:
                                                                  10.00.sp,
                                                              color: selectedindex ==
                                                                      index
                                                                  ? Colors.white
                                                                  : const Color(
                                                                      0xff969696),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    )),
                                                    Flexible(
                                                        child: Text(
                                                      '',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: GoogleFonts.roboto(
                                                          textStyle: TextStyle(
                                                              fontSize:
                                                                  10.00.sp,
                                                              color: selectedindex ==
                                                                      index
                                                                  ? Colors.white
                                                                  : const Color(
                                                                      0xff969696),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ))
                                                  ]),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Image.asset(
                                              selectedindex == index
                                                  ? 'assets/images/up.png'
                                                  : 'assets/images/down.png',
                                              height: 13,
                                              width: 13,
                                              color: selectedindex == index
                                                  ? Colors.white
                                                  : const Color(0xff969696),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 0.50.hp,
                            ),
                            selectedindex == index
                                ? Container(
                                    width: 90.00.wp,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: const Color(0xffC6C6C6)
                                                .withOpacity(0.3)),
                                        color: Colors.white),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 3.00.hp,
                                        ),
                                        SizedBox(
                                          height: 50,
                                          width: 300,
                                          child: GridView.builder(
                                              itemCount:
                                                  subCategorytypeController
                                                      .getsubcategorytype[0]
                                                      .data!
                                                      .materialType![index]
                                                      .materialSubtype!
                                                      .length,
                                              itemBuilder: ((context, index1) {
                                                var griditem =
                                                    subCategorytypeController
                                                        .getsubcategorytype[0]
                                                        .data!
                                                        .materialType![index1];
                                                return Column(
                                                  children: [
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          InkWell(
                                                            /*       onTap: () {
                                                              setState(() {
                                                                gridIndex = index1;
                                                                // selectedindex ==
                                                                //     language[data];
                                                                log(gridIndex
                                                                    .toString());
                                                                log(griditem
                                                                    .materialSubtype![
                                                                        index1]
                                                                    .type!
                                                                    .toString());
                                                                var e = griditem
                                                                    .materialSubtype![
                                                                        0]
                                                                    .type!;
                                                                if (e ==
                                                                    'English') {
                                                                  store = griditem
                                                                      .materialSubtype![
                                                                          index1]
                                                                      .price
                                                                      .toString();

                                                                  print(
                                                                      'storee--${store}');
                                                                } else if (e ==
                                                                    'Tamil') {
                                                                  store = griditem
                                                                      .materialSubtype![
                                                                          index1]
                                                                      .price!
                                                                      .toString();
                                                                  print(
                                                                      'storee--${store}');
                                                                }

                                                                // selectedindex = index;
                                                              });
                                                            },

                                                          */
                                                            onTap: () {
                                                              subCategorytypeController
                                                                  .subCategoryList
                                                                  .insert(
                                                                      index,
                                                                      griditem
                                                                          .materialSubtype![
                                                                              index1]
                                                                          .price!);
                                                              setState(() {});
                                                            },
                                                            child: Container(
                                                                decoration: BoxDecoration(
                                                                    color: gridIndex ==
                                                                            index1
                                                                        ? appcolor
                                                                        : const Color(
                                                                            0xffEDEDED),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            3)),
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top: 7,
                                                                        bottom:
                                                                            7,
                                                                        left:
                                                                            23,
                                                                        right:
                                                                            23),
                                                                child: Text(
                                                                  griditem
                                                                      .materialSubtype![
                                                                          index1]
                                                                      .type!
                                                                      .toString(),
                                                                  style: GoogleFonts.roboto(
                                                                      textStyle: TextStyle(
                                                                          fontSize: 10.00
                                                                              .sp,
                                                                          color: selectlanguage == 0
                                                                              ? Colors.white
                                                                              : const Color(0xff848484),
                                                                          fontWeight: FontWeight.w500)),
                                                                )),
                                                          ),
                                                        ]),

                                                    ////
                                                  ],
                                                );
                                              }),
                                              gridDelegate:
                                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                              )),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.42,
                                                  //   color: const Color(0xffEDEDED),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 6.0),
                                                        child: Text(
                                                          'KG',
                                                          style: GoogleFonts.roboto(
                                                              textStyle: TextStyle(
                                                                  fontSize:
                                                                      11.00.sp,
                                                                  color: const Color(
                                                                          0xff455A64)
                                                                      .withOpacity(
                                                                          0.8),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500)),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 0.50.hp,
                                                      ),
                                                      SizedBox(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.05,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.37,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.05,
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.1,
                                                              color: const Color(
                                                                      0xff54A39B)
                                                                  .withOpacity(
                                                                      0.3),
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right: 5),
                                                              child: InkWell(
                                                                  onTap: () {
                                                                    log(subCategorytypeController
                                                                        .qty
                                                                        .length
                                                                        .toString());
                                                                    int currentValue =
                                                                        int.parse(
                                                                            _distanceController.text);

                                                                    subCategorytypeController
                                                                            .qty[
                                                                        index]--;
                                                                    _distanceController
                                                                        .text = (subCategorytypeController.qty[index] >
                                                                                0
                                                                            ? subCategorytypeController.qty[index]
                                                                            : 0)
                                                                        .toString();

                                                                    // decrementing value
                                                                    subCategorytypeController.materialQuantityGstdController(
                                                                        materialId: subCategorytypeController
                                                                            .getsubcategorytype[
                                                                                0]
                                                                            .data!
                                                                            .materialType![
                                                                                0]
                                                                            .materialId
                                                                            .toString(),
                                                                        quantity: subCategorytypeController
                                                                            .qty[
                                                                                index]
                                                                            .toString(),
                                                                        index:
                                                                            index);
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .remove,
                                                                    size: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        0.015,
                                                                    color: const Color(
                                                                        0xFF737070),
                                                                  )),
                                                            ),
                                                            Container(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.06,
                                                                width: 1,
                                                                color: const Color(
                                                                    0xFFEDEDED)),
                                                            Center(
                                                              child: Container(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.05,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.14,
                                                                color: const Color(
                                                                    0xFFEDEDED),
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                // padding:
                                                                //     const EdgeInsets.only(
                                                                //         top: 20, left: 2),
                                                                child: Center(
                                                                    child: Text(subCategorytypeController
                                                                        .qty[
                                                                            index]
                                                                        .toString())),
                                                              ),
                                                            ),
                                                            Container(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.06,
                                                                width: 1,
                                                                color: const Color(
                                                                    0xFFEDEDED)),
                                                            Container(
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.05,
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.1,
                                                              color: const Color(
                                                                      0xff54A39B)
                                                                  .withOpacity(
                                                                      0.3),
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right: 5),
                                                              child: InkWell(
                                                                  onTap: () {
                                                                    int currentValue =
                                                                        int.parse(
                                                                            _distanceController.text);
                                                                    setState(
                                                                        () {
                                                                      subCategorytypeController
                                                                              .qty[
                                                                          index] = subCategorytypeController
                                                                              .qty[index] +
                                                                          1;
                                                                      _distanceController
                                                                          .text = (subCategorytypeController
                                                                              .qty[index])
                                                                          .toString();
                                                                      subCategorytypeController.materialQuantityGstdController(
                                                                          materialId: subCategorytypeController
                                                                              .getsubcategorytype[
                                                                                  0]
                                                                              .data!
                                                                              .materialType![
                                                                                  0]
                                                                              .materialId
                                                                              .toString(),
                                                                          quantity: _distanceController
                                                                              .text,
                                                                          index:
                                                                              index);
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons.add,
                                                                    size: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        0.02,
                                                                    color: const Color(
                                                                        0xFF737070),
                                                                  )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.38,
                                                  //   color: const Color(0xffEDEDED),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 2.0),
                                                        child: Text(
                                                          'Price',
                                                          style: GoogleFonts.roboto(
                                                              textStyle: TextStyle(
                                                                  fontSize:
                                                                      11.00.sp,
                                                                  color: const Color(
                                                                          0xff455A64)
                                                                      .withOpacity(
                                                                          0.8),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500)),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 0.50.hp,
                                                      ),
                                                      Obx(() {
                                                        if (subCategorytypeController
                                                                .materialtypewithGstLoad
                                                                .value &&
                                                            subCategorytypeController
                                                                .price
                                                                .isEmpty) {
                                                          log('printeyy-----${subCategorytypeController.materialtypewithGstLoad.value.toString()}');

                                                          return const Center(
                                                            child:
                                                                CircularProgressIndicator(),
                                                          );
                                                        } else {
                                                          return Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.05,
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.35,
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xff5EBDB7),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2)),
                                                            child: Center(
                                                                child: Text(
                                                              subCategorytypeController
                                                                  .price[index]
                                                                  .toString(),
                                                              style: GoogleFonts.roboto(
                                                                  textStyle: TextStyle(
                                                                      fontSize:
                                                                          12.00
                                                                              .sp,
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600)),
                                                            )),
                                                          );
                                                        }
                                                      })
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 2.00.hp,
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(),
                            SizedBox(
                              height: 3.00.hp,
                            )
                          ],
                        );
                      }),
                ],
              ),
            ),
          ],
        );
      }
    });
  }
}
