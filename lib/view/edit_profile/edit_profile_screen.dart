import 'dart:developer';

import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/controller/profileupdate_state_controller.dart';

import '../../controller/getProfile_controller.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  ProfileController profileController = Get.put(ProfileController());
  // ignore: prefer_final_fields

  var items = [
    'TamilNadu',
    'Assam',
    'Bihar',
    'Andhra Prdhesh',
    'Uttra ',
  ];

  String dropdownvalue = 'TamilNadu';
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  fetchData() async {
    profileController.profileController().then((value) async {
      var data = profileController.getProfilemodel[0].data!;
      // var data1 = profileController.getprofileUpdatestate[0].state!;
      profileController.userName.text = data.userName ?? '';
      profileController.companyName.text = data.companyName ?? '';
      profileController.email.text = data.emailId ?? '';
      profileController.mobileNumber.text = data.mobileNumber ?? '';
      profileController.gstNumber.text = data.gstNumber ?? '';
      profileController.address.text = data.address ?? '';
      profileController.street.text = data.street ?? '';
      profileController.pincode.text = data.pincode ?? '';
      profileController.state.value = data.state ?? "";
      profileController.city.value = data.city ?? '';
      log(data.state.toString());
      log(data.city.toString());
      log('profile----------${profileController.userName.text.toString()}');
      log('profile----------${profileController.pincode.text.toString()}');
      if (data.city!.isNotEmpty) {
        await profileController.getCity(stateId: data.state);
      }
    });
    await profileController.getState();

    profileController.generalLoad(false);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (profileController.isProfileLoad.value ||
          profileController.isStateLoading.value ||
          profileController.isCityLoading.value) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else {
        return Scaffold(
          backgroundColor: const Color(0xff5EBDB7),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Center(
                          child: Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 4.00.hp),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Image.asset(
                                'assets/images/back_arrow.png',
                                height: 35,
                                width: 35,
                              ),
                            )
                          ],
                        ),
                      )),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 16.00.hp,
                        ),
                        child: Container(
                            width: 100.00.wp,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                )),
                            child: const DetailsSection()),
                      ),
                      const ProfileImage(),
                    ],
                  ),
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
                                  print('clickkk');
                                  await profileController
                                      .profileUpdateController(
                                          context: context);

                                  // Get.to(const HomePage());
                                },
                                elevationvalue: 0,
                                text: 'SAVE',
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
            ),
          )),
        );
      }
    });
  }
}
