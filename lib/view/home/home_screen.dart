import 'package:zero_scarp/allpackages.dart';

import '../../controller/category_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LoginController loginController = Get.put(LoginController());
  CategoryController categoryController = Get.put(CategoryController());
  @override
  void initState() {
    categoryController.categoryController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: Helper.of(context).onWillPop,
        child: Obx(() {
          if (categoryController.categoryLoad.value) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (categoryController.getcategory.isEmpty) {
            return const Center(
              child: Text('No Data Found'),
            );
          } else {
            return Scaffold(
              backgroundColor: const Color(0xffF5F5F5),
              appBar: PreferredSize(
                preferredSize: const Size(100, 70), //width and height
                // The size the AppBar would prefer if there were no other constraints.
                child: SafeArea(
                    child: Container(
                  height: 60,
                  width: 100.00.wp,
                  color: Colors.pink,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/bg.png',
                        height: 60,
                        width: 100.00.wp,
                        fit: BoxFit.fill,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/images/a.png',
                              height: 40,
                              width: 45.00.wp,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  showMenu<String>(
                                    context: context,
                                    position: const RelativeRect.fromLTRB(
                                        25.0,
                                        25.0,
                                        0.0,
                                        0.0), //position where you want to show the menu on screen
                                    items: [
                                      const PopupMenuItem<String>(
                                          child: Text('Profile'), value: '1'),
                                      const PopupMenuItem<String>(
                                          child: Text('LogOut'), value: '2'),
                                    ],
                                    elevation: 8.0,
                                  ).then<void>((String? itemSelected) {
                                    if (itemSelected == null) return;

                                    if (itemSelected == "1") {
                                      Get.to(const EditProfileScreen());
                                    } else if (itemSelected == "2") {
                                      loginController.logout();
                                      // Get.to(const LoginScreen());
                                    } else {
                                      //code here
                                    }
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, right: 9),
                                  child: Image.asset(
                                    'assets/images/people1.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                      // Container(
                      //     height: 100,
                      //     color: Color(0xff283736),
                      //     child: Row(
                      //       children: [],
                      //     )),
                    ],
                  ),
                )),
              ),
              body: SafeArea(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    const ImageSliderHome(),
                    SizedBox(
                      height: 1.00.hp,
                    ),
                    Container(
                      width: 100.00.wp,
                      height: 10.00.hp,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image:
                                  AssetImage('assets/images/category2.png'))),
                    ),
                    const CategoryList(),
                    SizedBox(
                      height: 4.00.hp,
                    ),
                  ],
                ),
              )),
            );
          }
        }));
  }
}
