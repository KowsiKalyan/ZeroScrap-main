import 'package:zero_scarp/allpackages.dart';

import '../../controller/confirmdetail_controller.dart';

class YourDetailSection extends StatefulWidget {
  const YourDetailSection({Key? key}) : super(key: key);

  @override
  State<YourDetailSection> createState() => _YourDetailSectionState();
}

class _YourDetailSectionState extends State<YourDetailSection> {
  ConfrimDetailsController confrimDetailsController =
      Get.put(ConfrimDetailsController());
  var detailsnames = [
    'Name',
    'Company Name',
    'Email ID',
    'Mobile Number',
    'GST Number',
    'Address',
    'State',
    'City',
    'Pincode'
  ];
  var detailsvalues = [
    'Joseph',
    'JS auto casting',
    'Josep@info.com',
    '+91 2121212121',
    'JDEST715739H',
    '132 skathi colony, Kovilpalayam',
    'Tamil Nadu',
    'Coimbatore',
    '641035'
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (confrimDetailsController.confrimdetailsLoad.value) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (confrimDetailsController.getconfirmdetails.isEmpty) {
        return const Center(
          child: Text('No Data Found'),
        );
      } else {
        var data = confrimDetailsController.getconfirmdetails[0].userDetails;

        return Column(
          children: [
            Container(
              width: 95.00.wp,
              decoration: BoxDecoration(
                  color: const Color(0xffC6C6C6).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(
                      color: const Color(0xffC6C6C6).withOpacity(0.4))),
              child: Column(
                children: [
                  SizedBox(
                    height: 2.00.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 35.00.wp,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Name',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 11.00.sp,
                                          color: const Color(0xff373737),
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '-',
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 11.00.sp,
                                color: const Color(0xff373737),
                                fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: SizedBox(
                          width: 40.00.wp,
                          child: Row(children: [
                            Flexible(
                              child: Text(
                                data!.userName.toString(),
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 11.00.sp,
                                        color: const Color(0xff6F6969),
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.00.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 35.00.wp,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Company Name',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 11.00.sp,
                                          color: const Color(0xff373737),
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '-',
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 11.00.sp,
                                color: const Color(0xff373737),
                                fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: SizedBox(
                          width: 40.00.wp,
                          child: Row(children: [
                            Flexible(
                              child: Text(
                                data.companyName.toString(),
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 11.00.sp,
                                        color: const Color(0xff6F6969),
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.00.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 35.00.wp,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Email ID',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 11.00.sp,
                                          color: const Color(0xff373737),
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '-',
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 11.00.sp,
                                color: const Color(0xff373737),
                                fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: SizedBox(
                          width: 40.00.wp,
                          child: Row(children: [
                            Flexible(
                              child: Text(
                                data.emailId.toString(),
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 11.00.sp,
                                        color: const Color(0xff6F6969),
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.00.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 35.00.wp,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Mobile Number',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 11.00.sp,
                                          color: const Color(0xff373737),
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '-',
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 11.00.sp,
                                color: const Color(0xff373737),
                                fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: SizedBox(
                          width: 40.00.wp,
                          child: Row(children: [
                            Flexible(
                              child: Text(
                                data.mobileNumber.toString(),
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 11.00.sp,
                                        color: const Color(0xff6F6969),
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.00.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 35.00.wp,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'GST Number',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 11.00.sp,
                                          color: const Color(0xff373737),
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '-',
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 11.00.sp,
                                color: const Color(0xff373737),
                                fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: SizedBox(
                          width: 40.00.wp,
                          child: Row(children: [
                            Flexible(
                              child: Text(
                                data.gstNumber.toString(),
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 11.00.sp,
                                        color: const Color(0xff6F6969),
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.00.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 35.00.wp,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Address',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 11.00.sp,
                                          color: const Color(0xff373737),
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '-',
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 11.00.sp,
                                color: const Color(0xff373737),
                                fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: SizedBox(
                          width: 40.00.wp,
                          child: Row(children: [
                            Flexible(
                              child: Text(
                                data.address.toString(),
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 11.00.sp,
                                        color: const Color(0xff6F6969),
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.00.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 35.00.wp,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'State',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 11.00.sp,
                                          color: const Color(0xff373737),
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '-',
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 11.00.sp,
                                color: const Color(0xff373737),
                                fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: SizedBox(
                          width: 40.00.wp,
                          child: Row(children: [
                            Flexible(
                              child: Text(
                                data.state.toString(),
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 11.00.sp,
                                        color: const Color(0xff6F6969),
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.00.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 35.00.wp,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'City',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 11.00.sp,
                                          color: const Color(0xff373737),
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '-',
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 11.00.sp,
                                color: const Color(0xff373737),
                                fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: SizedBox(
                          width: 40.00.wp,
                          child: Row(children: [
                            Flexible(
                              child: Text(
                                data.city.toString(),
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 11.00.sp,
                                        color: const Color(0xff6F6969),
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.00.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 35.00.wp,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Pincode',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 11.00.sp,
                                          color: const Color(0xff373737),
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '-',
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 11.00.sp,
                                color: const Color(0xff373737),
                                fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: SizedBox(
                          width: 40.00.wp,
                          child: Row(children: [
                            Flexible(
                              child: Text(
                                data.pincode.toString(),
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 11.00.sp,
                                        color: const Color(0xff6F6969),
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      }
    });
  }
}
