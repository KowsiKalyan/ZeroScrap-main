import 'package:zero_scarp/allpackages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Map<String, Widget>> _pages = [
    {
      'page': const HomeScreen(),
    },
    {
      'page': const HistoryScreen(),
    },
    {
      'page': const NotificationScreen(),
    },
    {
      'page': const MenuScreen(),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _pages[_currentIndex]['page'],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 3.0, right: 3, bottom: 5),
          child: BottomNavyBar(
            containerHeight: 50,
            selectedIndex: _currentIndex,
            showElevation: false,
            itemCornerRadius: 24,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            curve: Curves.easeIn,
            onItemSelected: (index) => setState(() => _currentIndex = index),
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: const Icon(
                  Icons.home,
                  size: 20,
                ),
                title: const Padding(
                  padding: EdgeInsets.only(left: 1.0),
                  child: Text('Home'),
                ),
                activeColor: appcolor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(
                  Icons.history,
                  size: 20,
                ),
                title: const Padding(
                  padding: EdgeInsets.only(left: 1.0),
                  child: Text('History'),
                ),
                activeColor: appcolor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(
                  Icons.notifications,
                  size: 20,
                ),
                title: const Padding(
                  padding: EdgeInsets.only(left: 0.0),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Notification',
                      // style: GoogleFonts.poppins(
                      //     textStyle: TextStyle(
                      //         letterSpacing: 1,
                      //         fontSize: 9.00.sp,
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
                activeColor: appcolor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(
                  Icons.menu,
                  size: 20,
                ),
                title: const Padding(
                  padding: EdgeInsets.only(left: 1.0),
                  child: Text('Menu'),
                ),
                activeColor: appcolor,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
