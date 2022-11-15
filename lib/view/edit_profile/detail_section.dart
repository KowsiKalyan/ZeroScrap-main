import 'dart:developer';

import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/controller/getProfile_controller.dart';
import 'package:zero_scarp/controller/profileupdate_state_controller.dart';
import 'package:zero_scarp/utils/common_function/statelist.dart';

class DetailsSection extends StatefulWidget {
  const DetailsSection({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailsSection> createState() => _DetailsSectionState();
}

class _DetailsSectionState extends State<DetailsSection> {
  var reason;
  var city;
  TextEditingController mobile = TextEditingController();
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        children: [
          SizedBox(
            height: 15.00.hp,
          ),
          Container(
            color: const Color(0xffD9D9D9).withOpacity(0.1),
            height: 7.00.hp, width: 95.00.wp,
            // padding: const EdgeInsets.only(
            //   left: 20,
            //   right: 20,
            // ),
            child: TextFormField(
              controller: profileController.userName,
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
                  hintText: 'User Name',
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
              controller: profileController.companyName,
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
              controller: profileController.email,
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
            height: 10.00.hp,
            width: 95.00.wp,
            child: TextFormField(
              controller: profileController.mobileNumber,
              enableInteractiveSelection: false,
              // validator: (value) {
              //   if (value!.isEmpty) {
              //     return 'Please Enter mobile Number';
              //   } else if (value.length != 10) {
              //     return "Please enter valid mobile number";
              //   } else {
              //     return null;
              //   }
              // },
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
              controller: profileController.gstNumber,
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
              controller: profileController.address,
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
              controller: profileController.street,
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
                      value: profileController.state.value.isEmpty
                          ? null
                          : profileController.state.value,
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              fontSize: 10.00.sp,
                              color: forminputcolor,
                              fontWeight: FontWeight.w500)),
                      hint: Text('State',
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  fontSize: 10.00.sp,
                                  color: formhintcolor,
                                  fontWeight: FontWeight.w500))),
                      onChanged: (String? newValue) async {
                        log(newValue.toString());
                        profileController.state.value = newValue ?? '';
                        profileController.city("");
                        await profileController.getCity(stateId: newValue);
                        setState(() {});
                      },
                      icon: Image.asset(
                        'assets/images/down.png',
                        color: const Color(0xFF737070),
                        height: 10,
                        width: 10,
                      ),
                      items: profileController
                              .getprofileUpdatestate[0].state!.isEmpty
                          ? []
                          : profileController.getprofileUpdatestate[0].state!
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
                                                color: forminputcolor,
                                                fontWeight: FontWeight.w500)))),
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
                      value: profileController.city.value.isEmpty
                          ? null
                          : profileController.city.value,
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              fontSize: 10.00.sp,
                              color: forminputcolor,
                              fontWeight: FontWeight.w500)),
                      hint: Text('City',
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  fontSize: 10.00.sp,
                                  color: formhintcolor,
                                  fontWeight: FontWeight.w500))),
                      onChanged: (String? newValue) {
                        setState(() {
                          profileController.city.value = newValue ?? '';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/down.png',
                        color: const Color(0xFF737070),
                        height: 10,
                        width: 10,
                      ),
                      items: profileController.getprofileUpdateCity.isEmpty
                          ? []
                          : profileController.getprofileUpdateCity[0].city!
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
                                                color: forminputcolor,
                                                fontWeight: FontWeight.w500)))),
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
              controller: profileController.pincode,
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
          const SizedBox(
            height: 30,
          ),
        ],
      );
    });
  }
}
