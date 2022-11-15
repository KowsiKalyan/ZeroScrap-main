import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/controller/fill_details_controller.dart';
import 'package:zero_scarp/controller/getProfile_controller.dart';

class FillDetails extends StatefulWidget {
  const FillDetails({Key? key}) : super(key: key);

  @override
  State<FillDetails> createState() => _FillDetailsState();
}

class _FillDetailsState extends State<FillDetails> {
  FillDetailsController fillDetailsController =
      Get.put(FillDetailsController());
  ProfileController profileController = Get.put(ProfileController());
  var city;
  @override
  void initState() {
    // fillDetailsController.fillDetailsController();
    getFnc();

    super.initState();
  }

  getFnc() async {
    await fillDetailsController.getState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      {
        if (fillDetailsController.isStateLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Column(
            children: [
              Container(
                color: const Color(0xffD9D9D9).withOpacity(0.1),
                height: 7.00.hp, width: 95.00.wp,
                // padding: const EdgeInsets.only(
                //   left: 20,
                //   right: 20,
                // ),
                child: TextFormField(
                  controller: fillDetailsController.userName,
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.00.sp,
                          color: forminputcolor,
                          fontWeight: FontWeight.w500)),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: appcolor, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                            color: const Color(0xffC6C6C6).withOpacity(0.5),
                            width: 1),
                      ),
                      fillColor: const Color(0xffC6C6C6),
                      hintText: 'Full Name',
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintStyle: GoogleFonts.jost(
                          textStyle: TextStyle(
                              fontSize: 10.00.sp,
                              color: formhintcolor,
                              fontWeight: FontWeight.w500)),
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color(0xffD9D9D9).withOpacity(0.1),
                height: 7.00.hp, width: 95.00.wp,
                // padding: const EdgeInsets.only(
                //   left: 20,
                //   right: 20,
                // ),
                child: TextFormField(
                  controller: fillDetailsController.companyName,
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.00.sp,
                          color: forminputcolor,
                          fontWeight: FontWeight.w500)),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: appcolor, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                            color: const Color(0xffC6C6C6).withOpacity(0.5),
                            width: 1),
                      ),
                      fillColor: const Color(0xffC6C6C6),
                      hintText: 'Company Name',
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintStyle: GoogleFonts.jost(
                          textStyle: TextStyle(
                              fontSize: 10.00.sp,
                              color: formhintcolor,
                              fontWeight: FontWeight.w500)),
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color(0xffD9D9D9).withOpacity(0.1),
                height: 7.00.hp, width: 95.00.wp,
                // padding: const EdgeInsets.only(
                //   left: 20,
                //   right: 20,
                // ),
                child: TextFormField(
                  controller: fillDetailsController.emailid,
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.00.sp,
                          color: forminputcolor,
                          fontWeight: FontWeight.w500)),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: appcolor, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                            color: const Color(0xffC6C6C6).withOpacity(0.5),
                            width: 1),
                      ),
                      fillColor: const Color(0xffC6C6C6),
                      hintText: 'Email ID',
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintStyle: GoogleFonts.jost(
                          textStyle: TextStyle(
                              fontSize: 10.00.sp,
                              color: formhintcolor,
                              fontWeight: FontWeight.w500)),
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color(0xffD9D9D9).withOpacity(0.1),
                height: 9.00.hp, width: 95.00.wp,
                // padding: const EdgeInsets.only(
                //   left: 20,
                //   right: 20,
                // ),
                child: TextFormField(
                  controller: fillDetailsController.mobileNumber,
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.00.sp,
                          color: forminputcolor,
                          fontWeight: FontWeight.w500)),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: appcolor, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                            color: const Color(0xffC6C6C6).withOpacity(0.5),
                            width: 1),
                      ),
                      fillColor: const Color(0xffC6C6C6),
                      hintText: 'Mobile Number',
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintStyle: GoogleFonts.jost(
                          textStyle: TextStyle(
                              fontSize: 10.00.sp,
                              color: formhintcolor,
                              fontWeight: FontWeight.w500)),
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color(0xffD9D9D9).withOpacity(0.1),
                height: 7.00.hp, width: 95.00.wp,
                // padding: const EdgeInsets.only(
                //   left: 20,
                //   right: 20,
                // ),
                child: TextFormField(
                  controller: fillDetailsController.gstNumber,
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.00.sp,
                          color: forminputcolor,
                          fontWeight: FontWeight.w500)),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: appcolor, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                            color: const Color(0xffC6C6C6).withOpacity(0.5),
                            width: 1),
                      ),
                      fillColor: const Color(0xffC6C6C6),
                      hintText: 'GST Number',
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintStyle: GoogleFonts.jost(
                          textStyle: TextStyle(
                              fontSize: 10.00.sp,
                              color: formhintcolor,
                              fontWeight: FontWeight.w500)),
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color(0xffD9D9D9).withOpacity(0.1),
                height: 7.00.hp, width: 95.00.wp,
                // padding: const EdgeInsets.only(
                //   left: 20,
                //   right: 20,
                // ),
                child: TextFormField(
                  controller: fillDetailsController.address,
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.00.sp,
                          color: forminputcolor,
                          fontWeight: FontWeight.w500)),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: appcolor, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                            color: const Color(0xffC6C6C6).withOpacity(0.5),
                            width: 1),
                      ),
                      fillColor: const Color(0xffC6C6C6),
                      hintText: 'Address',
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintStyle: GoogleFonts.jost(
                          textStyle: TextStyle(
                              fontSize: 10.00.sp,
                              color: formhintcolor,
                              fontWeight: FontWeight.w500)),
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color(0xffD9D9D9).withOpacity(0.1),
                height: 7.00.hp, width: 95.00.wp,
                // padding: const EdgeInsets.only(
                //   left: 20,
                //   right: 20,
                // ),
                child: TextFormField(
                  controller: fillDetailsController.street,
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.00.sp,
                          color: forminputcolor,
                          fontWeight: FontWeight.w500)),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: appcolor, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                            color: const Color(0xffC6C6C6).withOpacity(0.5),
                            width: 1),
                      ),
                      fillColor: const Color(0xffC6C6C6),
                      hintText: 'Street Name',
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintStyle: GoogleFonts.jost(
                          textStyle: TextStyle(
                              fontSize: 10.00.sp,
                              color: formhintcolor,
                              fontWeight: FontWeight.w500)),
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 7.00.hp,
                      width: 95.00.wp,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: const Color(0xFFECE9E9),
                          width: MediaQuery.of(context).size.height * 0.001,
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: fillDetailsController.state.value.isEmpty
                              ? null
                              : fillDetailsController.state.value,
                          hint: Text('State',
                              style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      fontSize: 10.00.sp,
                                      color: formhintcolor,
                                      fontWeight: FontWeight.w500))),
                          onChanged: (newValue) {
                            setState(() {
                              fillDetailsController.state.value =
                                  newValue ?? '';
                              fillDetailsController.getCity(stateId: newValue);
                            });
                          },
                          icon: Image.asset(
                            'assets/images/down.png',
                            color: const Color(0xFF737070),
                            height: 10,
                            width: 10,
                          ),
                          items: fillDetailsController
                                  .getprofileUpdatestate.isEmpty
                              ? []
                              : fillDetailsController
                                  .getprofileUpdatestate[0].state!
                                  .map<DropdownMenuItem<String>>((value) {
                                  return DropdownMenuItem<String>(
                                    value: value.id.toString(),
                                    child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 0, right: 4),
                                        child: Text(value.name ?? '',
                                            style: GoogleFonts.jost(
                                                textStyle: TextStyle(
                                                    fontSize: 10.00.sp,
                                                    color: formhintcolor,
                                                    fontWeight:
                                                        FontWeight.w500)))),
                                  );
                                }).toList(),
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 7.00.hp,
                      width: 95.00.wp,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: const Color(0xFFECE9E9),
                          width: MediaQuery.of(context).size.height * 0.001,
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: city,
                          hint: Text('City',
                              style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      fontSize: 10.00.sp,
                                      color: formhintcolor,
                                      fontWeight: FontWeight.w500))),
                          onChanged: (String? newValue) {
                            setState(() {
                              fillDetailsController.city.value = newValue!;
                            });
                          },
                          icon: Image.asset(
                            'assets/images/down.png',
                            color: const Color(0xFF737070),
                            height: 10,
                            width: 10,
                          ),
                          items:
                              fillDetailsController.getprofileUpdateCity.isEmpty
                                  ? []
                                  : fillDetailsController
                                      .getprofileUpdateCity[0].city!
                                      .map<DropdownMenuItem<String>>((value) {
                                      return DropdownMenuItem<String>(
                                        value: value.id.toString(),
                                        child: Container(
                                            margin: const EdgeInsets.only(
                                                left: 0, right: 4),
                                            child: Text(value.name.toString(),
                                                style: GoogleFonts.jost(
                                                    textStyle: TextStyle(
                                                        fontSize: 10.00.sp,
                                                        color: formhintcolor,
                                                        fontWeight:
                                                            FontWeight.w500)))),
                                      );
                                    }).toList(),
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color(0xffD9D9D9).withOpacity(0.1),
                height: 7.00.hp, width: 95.00.wp,
                // padding: const EdgeInsets.only(
                //   left: 20,
                //   right: 20,
                // ),
                child: TextFormField(
                  controller: fillDetailsController.pincode,
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.00.sp,
                          color: forminputcolor,
                          fontWeight: FontWeight.w500)),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: appcolor, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                            color: const Color(0xffC6C6C6).withOpacity(0.5),
                            width: 1),
                      ),
                      fillColor: const Color(0xffC6C6C6),
                      hintText: 'Pincode',
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintStyle: GoogleFonts.jost(
                          textStyle: TextStyle(
                              fontSize: 10.00.sp,
                              color: formhintcolor,
                              fontWeight: FontWeight.w500)),
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
            ],
          );
        }
      }
    });
  }
}
