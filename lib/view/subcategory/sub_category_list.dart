import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/controller/subcategory_controller.dart';

class SubCategoryList extends StatefulWidget {
  const SubCategoryList({Key? key}) : super(key: key);

  @override
  State<SubCategoryList> createState() => _SubCategoryListState();
}

class _SubCategoryListState extends State<SubCategoryList> {
  var images = [
    'assets/img/sub5.png',
    'assets/img/sub4.png',
    'assets/img/sub3.png',
    'assets/img/sub1.png',
    'assets/img/sub2.png',
  ];
  var names = [
    'PAPER WASTE',
    'PLASTIC WASTE',
    'FERROUS  METAL',
    'NON - FERROUS  METAL',
    'E - WASTE',
  ];
  SubCategoryController subCategoryController =
      Get.put(SubCategoryController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:
            subCategoryController.getsubcategory[0].data!.subcategory!.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          var data =
              subCategoryController.getsubcategory[0].data!.subcategory![index];
          return Column(
            children: [
              SizedBox(
                height: 2.00.hp,
              ),
              InkWell(
                onTap: () {
                  Get.to(ProductSelectScreen(
                    subcategoryId: data.subcategoryId.toString(),
                  ));
                },
                child: Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.97,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0xffFFFFFF),
                        border: Border.all(
                          color: const Color(0xffFFFFFF),
                        )),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 1.00.hp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    // backgroundColor: ,// Image radius
                                    backgroundImage:
                                        NetworkImage(data.subcategoryImage!),
                                  ),
                                  Container(
                                    width: 60.00.wp,
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            data.subcategoryName!.toString(),
                                            textAlign: TextAlign.center,
                                            style: listtitle,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset('assets/images/right.png',
                                    height: 14, width: 14),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 1.00.hp,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
