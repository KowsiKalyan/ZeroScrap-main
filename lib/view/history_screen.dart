import 'dart:developer';

import 'package:zero_scarp/allpackages.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        log('onwilll-----------');
        Get.offAll(HomePage());
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 10,
            backgroundColor: const Color(0xff283736),
            centerTitle: true,
            automaticallyImplyLeading: false,
            // leading: Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: InkWell(
            //     onTap: () {
            //       Get.offAll(HomePage());
            //     },
            //     child: Image.asset(
            //       'assets/images/back.png',
            //       width: 20,
            //       height: 20,
            //     ),
            //   ),
            // ),
            title: Text(
              'HISTORY',
              style: apptitle,
            )),
        body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 10,
                ),
                HistoryList(),
                SizedBox(
                  height: 20,
                ),
                YourDetails()
              ],
            ),
          )),
        ),
      ),
    );
  }
}
