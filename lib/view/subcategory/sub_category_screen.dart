import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/controller/subcategory_controller.dart';

class SubCategoryScreen extends StatefulWidget {
  String? id;
  SubCategoryScreen({Key? key, this.image, this.name, this.id})
      : super(key: key);
  String? image;
  String? name;

  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  SubCategoryController subCategoryController =
      Get.put(SubCategoryController());
  @override
  void initState() {
    subCategoryController.subCategoryController(
        categoryId: widget.id.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (subCategoryController.subcategoryLoad.value) {
        return Scaffold(
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else if (subCategoryController.getsubcategory.isEmpty) {
        return const Scaffold(
          body: Center(
            child: Text('No Data Found'),
          ),
        );
      } else {
        return Scaffold(
            backgroundColor: const Color(0xffF5F5F5),
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
                  widget.name!,
                  style: apptitle,
                )),
            body: SafeArea(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: MediaQuery.of(context).size.width * 1,
                    // height: 185,
                    color: appcolor,
                    child: Image.asset(
                      widget.image.toString(),
                    ),
                  ),
                  Container(
                    height: 10.00.hp,
                    width: 100.00.wp,
                    decoration: const BoxDecoration(
                        color: Color(0xff1E425E),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'SUB - CATEGORY',
                              style: apptitle,
                            ),
                            Container(
                                height: 3.00.hp,
                                width: 15.00.wp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  color: const Color(0xff263238),
                                ),
                                child: Center(
                                    child: Text(
                                  'All',
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 10.00.sp,
                                          color: screenbackground,
                                          fontWeight: FontWeight.w500)),
                                )))
                          ]),
                    ),
                  ),
                  const SubCategoryList(),
                  SizedBox(
                    height: 4.00.hp,
                  ),
                ],
              ),
            )));
      }
    });
  }
}
