import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/controller/category_controller.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  CategoryController categoryController = Get.put(CategoryController());

  var image = [
    'assets/images/industry.gif',
    'assets/images/estore.gif',
    'assets/images/supermarket.gif',
    'assets/images/shop.gif',
    'assets/images/apartment.gif',
    'assets/images/individualhome.gif',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: GridView.builder(
                itemCount:
                    categoryController.getcategory[0].data!.category!.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var data =
                      categoryController.getcategory[0].data!.category![index];
                  return InkWell(
                    onTap: () {
                      Get.to(SubCategoryScreen(
                        image: image[index],
                        name: data.categoryName!,
                        id: data.categoryId.toString(),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Card(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.00.hp,
                            ),
                            Container(
                                child: Image.network(
                              data.categoryImage ?? "",
                              height: 60,
                            )),
                            SizedBox(
                              height: 1.00.hp,
                            ),
                            Container(
                              width: 60.00.wp,
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      data.categoryName!,
                                      textAlign: TextAlign.center,
                                      style: socialbutton,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                )),
          ),
          SizedBox(
            height: 3.00.hp,
          ),
          const Apartments(),
          SizedBox(
            height: 3.00.hp,
          ),
          const IndividualHome()
        ]));
  }
}
