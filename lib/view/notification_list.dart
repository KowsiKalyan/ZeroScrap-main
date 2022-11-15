import 'package:zero_scarp/allpackages.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({Key? key}) : super(key: key);

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Center(
                child: Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 97.00.wp,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(width: 2, color: const Color(0xffF5F5F5)),
                      borderRadius: BorderRadius.circular(10),
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
                              const CircleAvatar(
                                radius: 25, // Image radius
                                backgroundImage:
                                    AssetImage('assets/images/people2.png'),
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
                                              'AX-SCRAP',
                                              style: notificationtitle,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '10:31 AM',
                                                style: notificationtime,
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              Image.asset(
                                                'assets/images/right.png',
                                                height: 10,
                                                width: 10,
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
                                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Laoreet nunc morbi lectus donec.''',
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
              SizedBox(
                height: 1.00.hp,
              )
            ],
          );
        });
  }
}
