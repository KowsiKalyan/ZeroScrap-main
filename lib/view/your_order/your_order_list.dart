import 'package:zero_scarp/allpackages.dart';

class YourOrderList extends StatefulWidget {
  const YourOrderList({Key? key}) : super(key: key);

  @override
  State<YourOrderList> createState() => _YourOrderListState();
}

class _YourOrderListState extends State<YourOrderList> {
  var selected;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          var count = index + 1;
          return Column(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Center(
                  child: Container(
                    width: 97.00.wp,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(width: 2, color: const Color(0xffF5F5F5)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 5.0, right: 5, top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 20, // Image radius
                                backgroundColor: const Color(0xffF6F6F6),
                                child: Text(
                                  count.toString(),
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontSize: 9.00.sp,
                                          color: const Color(0xff333333),
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 2),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              'Paper Waste',
                                              style: notificationtitle,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '27/07/22',
                                                style: notificationtime,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              selected == index
                                                  ? Image.asset(
                                                      'assets/images/up.png',
                                                      height: 10,
                                                      width: 10,
                                                      color: const Color(
                                                          0xffAAA9A9),
                                                    )
                                                  : Image.asset(
                                                      'assets/images/down.png',
                                                      height: 10,
                                                      width: 10,
                                                      color: const Color(
                                                          0xffAAA9A9),
                                                    ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              '''Tamil | English, Magazine, White paper''',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: notificationsubtitle,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              selected == index
                  ? Column(
                      children: [
                        const YourOrderProductList(),
                        const SizedBox(
                          height: 15,
                        ),
                        const YourOrderDetailsSection(),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.065,
                                width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                    color: const Color(0xff283736),
                                    border: Border.all(
                                      color: const Color(0xff283736),
                                    ),
                                    borderRadius: BorderRadius.circular(5)),
                                child: ElevatedButton(
                                  onPressed: () {
                                    cancelreceivedorderBottomSheet(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xff283736),
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
                                  child: Text(
                                    'CANCEL ORDER',
                                    style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                            fontSize: 11.00.sp,
                                            color: screenbackground,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                      ],
                    )
                  : Container(),
            ],
          );
        });
  }

  cancelreceivedorderBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        isDismissible: true,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        builder: (context) {
          return const CancelOrder();
        });
  }
}
