import 'package:zero_scarp/allpackages.dart';

class IndividualHomeViewMoreScreen extends StatefulWidget {
  IndividualHomeViewMoreScreen({Key? key, this.image}) : super(key: key);
  String? image;

  @override
  State<IndividualHomeViewMoreScreen> createState() =>
      _IndividualHomeViewMoreScreenState();
}

class _IndividualHomeViewMoreScreenState
    extends State<IndividualHomeViewMoreScreen> {
  @override
  Widget build(BuildContext context) {
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
            'INDIVIDUAL HOME',
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
                'assets/images/individualhome.gif',
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
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
            const ApartmentViewMore(),
            SizedBox(
              height: 4.00.hp,
            ),
          ],
        ),
      )),
    );
  }
}
