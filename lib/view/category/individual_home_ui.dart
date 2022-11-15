import 'package:zero_scarp/allpackages.dart';
import 'package:zero_scarp/view/category/apartment_list.dart';

import 'individual_view_more_screen.dart';

class IndividualHome extends StatefulWidget {
  const IndividualHome({Key? key}) : super(key: key);

  @override
  State<IndividualHome> createState() => _IndividualHomeState();
}

class _IndividualHomeState extends State<IndividualHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          height: 40.00.hp,
          width: 100.00.wp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'IndividualHome',
                        style: listtitle,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(IndividualHomeViewMoreScreen());
                            },
                            child: Text(
                              'view more',
                              style: viewmore,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: appcolor1,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 25.00.wp,
                          height: 5.00.hp,
                          decoration: BoxDecoration(
                            color: appcolor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text('Image',
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.016,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700))),
                          ),
                        ),
                        Container(
                          width: 25.00.wp,
                          height: 5.00.hp,
                          decoration: BoxDecoration(
                            color: appcolor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text('Sub_Category',
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.016,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700))),
                          ),
                        ),
                        Container(
                          width: 35.00.wp,
                          height: 5.00.hp,
                          decoration: BoxDecoration(
                            color: appcolor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text('STARTING PRICE/KG',
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.016,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700))),
                          ),
                        ),
                      ]),
                ),
                IndividualHomeList()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
