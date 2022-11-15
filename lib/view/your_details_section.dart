import 'package:zero_scarp/allpackages.dart';

class YourDetails extends StatefulWidget {
  const YourDetails({Key? key}) : super(key: key);

  @override
  State<YourDetails> createState() => _YourDetailsState();
}

class _YourDetailsState extends State<YourDetails> {
  var detailsnames = [
    'Name',
    'Company Name',
    'Email ID',
    'Mobile Number',
    'GST Number',
    'Address',
    'State',
    'City',
    'Pincode'
  ];
  var detailsvalues = [
    'Joseph',
    'JS auto casting',
    'Josep@info.com',
    '+91 2121212121',
    'JDEST715739H',
    '132 skathi colony, Kovilpalayam',
    'Tamil Nadu',
    'Coimbatore',
    '641035'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Details',
              style: GoogleFonts.jost(
                  textStyle: TextStyle(
                      fontSize: 14.00.sp,
                      color: const Color(0xff263238),
                      fontWeight: FontWeight.w600)),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: 95.00.wp,
          decoration: BoxDecoration(
              color: const Color(0xffC6C6C6).withOpacity(0.2),
              borderRadius: BorderRadius.circular(3),
              border:
                  Border.all(color: const Color(0xffC6C6C6).withOpacity(0.4))),
          child: Column(
            children: [
              ListView.builder(
                  itemCount: detailsnames.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
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
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        detailsnames[index],
                                        style: GoogleFonts.jost(
                                            textStyle: TextStyle(
                                                fontSize: 11.00.sp,
                                                color: const Color(0xff373737),
                                                fontWeight: FontWeight.w600)),
                                      ),
                                    ),
                                  ],
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
                                      detailsvalues[index],
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
                          height: 1.00.hp,
                        ),
                      ],
                    );
                  }),
              SizedBox(
                height: 4.00.hp,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
