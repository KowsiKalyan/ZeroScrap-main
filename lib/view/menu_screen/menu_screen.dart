import 'package:zero_scarp/allpackages.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAll(HomePage());
        return true;
      },
      child: Scaffold(
        backgroundColor: const Color(0xff5EBDB7),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 3.00.hp,
              ),
              const ProfileSection(),
              SizedBox(
                height: 3.00.hp,
              ),
              Container(
                width: 100.00.wp,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const OptionList(),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.065,
                      width: MediaQuery.of(context).size.width * 0.95,
                      decoration: BoxDecoration(
                          color: const Color(0xff5EBDB7),
                          border: Border.all(
                            color: const Color(0xff5EBDB7),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const LoginScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff5EBDB7),
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
                        child: InkWell(
                          onTap: () async {
                            await loginController.logout();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'LOGOUT',
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 10.00.sp,
                                        letterSpacing: 1.5,
                                        color: screenbackground,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Image.asset(
                                  'assets/images/logout.png',
                                  height: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.00.hp,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
