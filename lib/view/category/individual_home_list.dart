import 'package:zero_scarp/allpackages.dart';

class IndividualHomeList extends StatefulWidget {
  const IndividualHomeList({Key? key}) : super(key: key);

  @override
  State<IndividualHomeList> createState() => _IndividualHomeListState();
}

class _IndividualHomeListState extends State<IndividualHomeList> {
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
      itemCount: 3,
      //  padding: EdgeInsets.only(top: 30),
      itemBuilder: (context, index) {
        return Column(children: [
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
                width: MediaQuery.of(context).size.width * 0.25,
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
            height: 1.00.hp,
          ),
          const Divider(
            height: 2,
            thickness: 1,
            indent: 12,
            endIndent: 12,
            color: Color.fromARGB(255, 227, 224, 224),
          ),
        ]);
      },
    );
  }
}
