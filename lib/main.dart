import 'dart:developer';

import 'allpackages.dart';

// void main() async {
//   checkLogin();
//   runApp(const MyApp());
// }
Future main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await checkLogin();

  runApp(const MyApp());
}

String? token;
var user;
checkLogin() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  token = sharedPreferences.getString(Constants.authToken);
  log('tokeen');
  log(token.toString());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    print('tokennnnn----${token}');

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: Routes.routes,
        theme: ThemeData(
          primarySwatch: Colors.teal,
          textSelectionTheme: const TextSelectionThemeData(
            selectionHandleColor: Colors.transparent,
          ),
          splashColor: Colors.transparent,
          textTheme: GoogleFonts.jostTextTheme(Theme.of(context).textTheme),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            statusBarColor: Colors.white, // transparent status bar
            systemNavigationBarColor: Colors.black, // navigation bar color
            statusBarIconBrightness: Brightness.dark, // status bar icons' color
            systemNavigationBarIconBrightness:
                Brightness.dark, //navigation bar icons' color
          ),
          child: token != null ? const HomePage() : const LoginScreen(),
        ));
  }
}
