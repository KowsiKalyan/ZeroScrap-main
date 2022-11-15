import 'package:zero_scarp/allpackages.dart';

class CancelOrder extends StatefulWidget {
  const CancelOrder({Key? key}) : super(key: key);

  @override
  State<CancelOrder> createState() => _CancelOrderState();
}

class _CancelOrderState extends State<CancelOrder> {
  var reason;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Cancel Order',
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    fontSize: 14.00.sp,
                                    color: const Color(0xff2C2929),
                                    fontWeight: FontWeight.w600))),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Image.asset(
                                'assets/images/cancel_icon.png',
                                height: 30,
                                width: 30,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Text('Reason for cancellation',
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  fontSize: 13.00.sp,
                                  color: const Color(0xff2C2929),
                                  fontWeight: FontWeight.w600))),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('Select Reason',
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  fontSize: 11.00.sp,
                                  color: const Color(0xff2C2929),
                                  fontWeight: FontWeight.w600))),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.95,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: const Color(0xFFECE9E9),
                            width: MediaQuery.of(context).size.height * 0.001,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: reason,
                            hint: Text('Select Reason', style: formhintstyle),
                            style: forminputstyle,
                            onChanged: (String? newValue) {
                              setState(() {
                                reason = newValue!;
                              });
                            },
                            icon: Image.asset(
                              'assets/images/down.png',
                              color: const Color(0xFF737070),
                              height: 10,
                              width: 10,
                            ),
                            items: <String>[
                              'I change my mind',
                              'Changed in my delivery address',
                              'Product is not required anymore'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 0, right: 4),
                                    child: Text(
                                      value,
                                      style: forminputstyle,
                                    )),
                              );
                            }).toList(),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('Additional Comments',
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  fontSize: 11.00.sp,
                                  color: const Color(0xff2C2929),
                                  fontWeight: FontWeight.w600))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: const Color(0xFFECE9E9),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: TextField(
                      style: forminputstyle,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      minLines: 1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: formhintstyle,
                        hintText: "Additional Comments",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.065,
                        width: MediaQuery.of(context).size.width * 0.42,
                        decoration: BoxDecoration(
                            color: const Color(0xff283736),
                            border: Border.all(
                              color: const Color(0xff283736),
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
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
                            'NEVER MIND',
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    fontSize: 11.00.sp,
                                    color: screenbackground,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.065,
                        width: MediaQuery.of(context).size.width * 0.42,
                        decoration: BoxDecoration(
                            color: appcolor,
                            border: Border.all(
                              color: appcolor,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: appcolor,
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
                    ]),
              ],
            ),
          ),
        ));
  }
}
