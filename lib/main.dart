import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/utils/theme/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
        Locale('pt', ''), // Portuguese, no country code
      ],
      theme: TAppTheme.lighTheme,
      darkTheme: TAppTheme.darkTheme,
      // definition of the theme
      themeMode: ThemeMode.system,
      home: const AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Theme Demo"),
        leading: const Icon(Icons.account_circle_sharp),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text("Heding",style: Theme.of(context).textTheme.headline2,),
            Text("Sub-heding",style: Theme.of(context).textTheme.subtitle1,),
            Text("Paragraph",style: Theme.of(context).textTheme.bodyText1,),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("outlined"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Text Button"),
            ),
            const Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image(
                  image: AssetImage("assets/images/icon-transparent700.png")),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_a_photo),
        onPressed: () {},
      ),
    );
  }
}
