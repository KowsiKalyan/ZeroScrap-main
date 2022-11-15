import 'package:zero_scarp/allpackages.dart';

class SelectedProductDetails extends StatefulWidget {
  const SelectedProductDetails({Key? key}) : super(key: key);

  @override
  State<SelectedProductDetails> createState() => _SelectedProductDetailsState();
}

class _SelectedProductDetailsState extends State<SelectedProductDetails> {
  var type = ['News paper', 'Magazine', 'Note Book'];
  var price = ['Rs. 650', 'Rs. 720', 'Rs. 800'];
  var quantity = ['10', '12', '14'];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95.00.wp,
      decoration: BoxDecoration(
          color: const Color(0xffC6C6C6).withOpacity(0.2),
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: const Color(0xffC6C6C6).withOpacity(0.4))),
      child: Column(
        children: [
          SizedBox(
            height: 2.00.hp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  width: 35.00.wp,
                  child: Text(
                    'Category',
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 11.00.sp,
                            color: const Color(0xff373737),
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
              Text(
                '-',
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 11.00.sp,
                        color: const Color(0xff373737),
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: SizedBox(
                  width: 40.00.wp,
                  child: Row(children: [
                    Flexible(
                      child: Text(
                        'Industry',
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 11.00.sp,
                                color: const Color(0xff6F6969),
                                fontWeight: FontWeight.w500)),
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
          SizedBox(
            height: 2.00.hp,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  width: 35.00.wp,
                  child: Text(
                    'Sub-Category',
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 11.00.sp,
                            color: const Color(0xff373737),
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
              const Text('-'),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: SizedBox(
                  width: 40.00.wp,
                  child: Row(children: [
                    Flexible(
                      child: Text(
                        'Paper waste',
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 11.00.sp,
                                color: const Color(0xff6F6969),
                                fontWeight: FontWeight.w500)),
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
          SizedBox(
            height: 2.00.hp,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            color: const Color(0xff6A7B83),
            child: Column(
              children: [
                SizedBox(
                  height: 1.00.hp,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30.00.wp,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                'Type',
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 11.00.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.00.wp,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                'KG',
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 11.00.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.00.wp,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                'Price',
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 11.00.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.00.hp,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 3,
                ),
                ListView.builder(
                    itemCount: type.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 30.00.wp,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            type[index],
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.jost(
                                                textStyle: TextStyle(
                                                    fontSize: 11.00.sp,
                                                    color:
                                                        const Color(0xff6F6969),
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30.00.wp,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            quantity[index],
                                            style: GoogleFonts.jost(
                                                textStyle: TextStyle(
                                                    fontSize: 11.00.sp,
                                                    color:
                                                        const Color(0xff6F6969),
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30.00.wp,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            price[index],
                                            style: GoogleFonts.jost(
                                                textStyle: TextStyle(
                                                    fontSize: 11.00.sp,
                                                    color:
                                                        const Color(0xff6F6969),
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 85.00.wp,
                            color: Colors.grey[300],
                            height: 0.5,
                          ),
                        ],
                      );
                    }),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  //  height: 7.00.hp,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: appcolor, width: 1.5)),
                  padding: const EdgeInsets.only(
                      left: 18, right: 18, top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Total = ",
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 12.00.sp,
                                color: const Color(0xff5EBDB7),
                                fontWeight: FontWeight.w500)),
                      ),
                      Flexible(
                        child: Text(
                          "Rs. 2170",
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  fontSize: 12.00.sp,
                                  color: const Color(0xff5EBDB7),
                                  fontWeight: FontWeight.w500)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
