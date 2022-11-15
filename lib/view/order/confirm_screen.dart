import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/controller/addto_cart_controller.dart';
import 'package:zero_scarp/controller/order_placed_controller.dart';

import '../../controller/confirmdetail_controller.dart';

class ConfirmScreen extends StatefulWidget {
  ConfirmScreen({Key? key, this.orderId}) : super(key: key);
  String? orderId;

  @override
  State<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  ConfrimDetailsController confrimDetailsController =
      Get.put(ConfrimDetailsController());
  AddtoCartController addtoCartController = Get.put(AddtoCartController());
  OrderPlacedController orderPlacedController =
      Get.put(OrderPlacedController());
  @override
  void initState() {
    confrimDetailsController.confrimDetailsController(
        orderId: addtoCartController.orderID.value.toString());
    super.initState();
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
            'CONFIRM YOUR DETAILS',
            style: apptitle,
          )),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Container(
              width: 100.00.wp,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0))),
              child: Column(
                children: [
                  const YourProductSection(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Details',
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 14.00.sp,
                                color: const Color(0xff263238),
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const YourDetailSection(),
                  SizedBox(
                    height: 2.00.hp,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 100.00.wp,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.00,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.065,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: const Color(0xff283736),
                          border: Border.all(
                            color: const Color(0xff283736),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                        onPressed: () async {
                          await orderPlacedController.orderPlacedController(
                              orderId:
                                  addtoCartController.orderID.value.toString());

                          // Get.to(const OrderPlacedScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff283736),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          textStyle: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  fontSize: 11.00.sp,
                                  letterSpacing: 1.5,
                                  color: screenbackground,
                                  fontWeight: FontWeight.w500)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CLICK TO CONFIRM',
                              style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      fontSize: 11.00.sp,
                                      letterSpacing: 1.5,
                                      color: screenbackground,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Image.asset(
                                'assets/images/double_left.png',
                                height: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 20.00,
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
