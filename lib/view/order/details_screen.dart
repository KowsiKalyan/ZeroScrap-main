import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/controller/getProfile_controller.dart';
import 'package:zero_scarp/controller/order_list_controller.dart';
import 'package:zero_scarp/controller/subcategory_type_controller.dart';

import '../../controller/addto_cart_controller.dart';
import '../../controller/fill_details_controller.dart';
import '../../controller/materialquntity_gst_controller.dart';
import '../../controller/orderlist_gst_controller.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key? key, this.orderId}) : super(key: key);
  String? orderId;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  FillDetailsController fillDetailsController =
      Get.put(FillDetailsController());
  OrderListGstController orderListgstController =
      Get.put(OrderListGstController());

  AddtoCartController addtoCartController = Get.put(AddtoCartController());
  var selectgst = 0;
  @override
  void initState() {
    fetchData();

    super.initState();
  }

  fetchData() async {
    print('printt---------${addtoCartController.orderID.value.toString()}');
    await orderListgstController.orderListGstController(
        orderId: addtoCartController.orderID.value.toString(),
        gst: 10.toString());
    await fillDetailsController.getState();
  }

  @override
  Widget build(BuildContext context) {
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
            'ENTER YOUR DETAILS',
            style: apptitle,
          )),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: 100.00.wp,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0))),
                child: Column(children: [
                  SizedBox(
                    height: 3.00.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectgst = 0;
                          });
                        },
                        child: Material(
                          elevation: selectgst == 0 ? 5 : 0,
                          child: Container(
                            height: 7.00.hp,
                            width: 47.00.wp,
                            decoration: BoxDecoration(
                                color: selectgst == 0 ? appcolor : Colors.white,
                                border: Border.all(
                                  color:
                                      selectgst == 0 ? appcolor : Colors.white,
                                )),
                            child: Center(
                                child: Text(
                              'With GST',
                              style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      fontSize: 11.00.sp,
                                      color: selectgst == 0
                                          ? Colors.white
                                          : const Color(0xffA3A3A3),
                                      fontWeight: FontWeight.w500)),
                            )),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectgst = 1;
                          });
                        },
                        child: Material(
                          elevation: selectgst == 1 ? 5 : 0,
                          child: Container(
                            height: 7.00.hp,
                            width: 47.00.wp,
                            decoration: BoxDecoration(
                                color: selectgst == 1 ? appcolor : Colors.white,
                                border: Border.all(
                                  color: selectgst == 1
                                      ? appcolor
                                      : const Color(0xffC6C6C6)
                                          .withOpacity(0.5),
                                )),
                            child: Center(
                                child: Text(
                              'Without GST',
                              style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      fontSize: 11.00.sp,
                                      color: selectgst == 1
                                          ? Colors.white
                                          : const Color(0xffA3A3A3),
                                      fontWeight: FontWeight.w500)),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3.00.hp,
                  ),
                  selectgst == 0
                      ? Column(
                          children: [
                            ProductDetailsScreen(),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Fill Your Details',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 13.00.sp,
                                          color: const Color(0xff263238),
                                          fontWeight: FontWeight.w500)),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const FillDetails(),
                            const SizedBox(
                              height: 60,
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            ProductDetailsWithoutGst(),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Fill Your Details',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 13.00.sp,
                                          color: const Color(0xff263238),
                                          fontWeight: FontWeight.w500)),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const FillDetailsWithoutGst(),
                            const SizedBox(
                              height: 60,
                            ),
                          ],
                        )
                ])),
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
                          press: () async {
                            await fillDetailsController.fillDetailsController(
                                orderId: addtoCartController.orderID.value
                                    .toString(),
                                amount: selectgst == 0
                                    ? fillDetailsController.withGst.value
                                    : fillDetailsController.withouGst.value);
                            // Get.to(const ConfirmScreen());
                          },
                          elevationvalue: 0,
                          text: 'SUBMIT',
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
}
