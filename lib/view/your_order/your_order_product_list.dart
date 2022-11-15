import 'package:zero_scarp/allpackages.dart';

class YourOrderProductList extends StatefulWidget {
  const YourOrderProductList({Key? key}) : super(key: key);

  @override
  State<YourOrderProductList> createState() => _YourOrderProductListState();
}

class _YourOrderProductListState extends State<YourOrderProductList> {
  var type = ['News paper', 'Magazine', 'Note Book'];
  var price = ['Rs. 650', 'Rs. 720', 'Rs. 800'];
  var quantity = ['10', '12', '14'];
  bool isyourproduct = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            isyourproduct = !isyourproduct;
          });
        },
        child: Column(
          children: [
            Container(
              height: 5.00.hp,
              width: 95.00.wp,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff455A64),
                  border: Border.all(color: const Color(0xff455A64), width: 1)),
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 50.00.wp,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(children: [
                            Flexible(
                                child: Text(
                              'Your Product',
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      fontSize: 12.00.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                            ))
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30.00.wp,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                      isyourproduct == true
                                          ? 'assets/images/up.png'
                                          : 'assets/images/down.png',
                                      height: 13,
                                      width: 13,
                                      color: Colors.white)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 0.50.hp,
            ),
            isyourproduct == true ? const SelectedProductDetails() : Container()
          ],
        ));
  }
}
