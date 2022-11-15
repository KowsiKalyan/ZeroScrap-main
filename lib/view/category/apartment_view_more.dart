import 'package:zero_scarp/allpackages.dart';

class ApartmentViewMore extends StatefulWidget {
  const ApartmentViewMore({Key? key}) : super(key: key);

  @override
  State<ApartmentViewMore> createState() => _ApartmentViewMoreState();
}

class _ApartmentViewMoreState extends State<ApartmentViewMore> {
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
  var price = [
    '210/kg',
    '110/kg',
    '290/kg',
    '810/kg',
    '100/kg',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: images.length,
      //  padding: EdgeInsets.only(top: 30),
      itemBuilder: (context, index) {
        return Card(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.width * 0.11,
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage(images[index]),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.28,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(names[index], style: socialbutton),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(price[index], style: socialbutton),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
          ]),
        );
      },
    );
  }
}
