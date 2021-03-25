import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';

import 'package:scanner/pages/empresa-page.dart';
import 'package:scanner/pages/historial-page.dart';
import 'package:scanner/pages/home-page.dart';
import 'package:scanner/services/producto_provider.dart';
import 'package:scanner/services/ui-service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(new MyApp());
    });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
    
    providers: [
      ChangeNotifierProvider(create: (_) => new UiService(),),
      ChangeNotifierProvider(create: (_) => new ProductosProvider(),),
    ],
    
    child: MaterialApp(
        title: 'Lector Qr',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': ( _ ) => HomePage(),
          'historial': ( _ ) => HistorialPage(),
          'direcciones': ( _ ) => EmpresaPage(),
        },
        theme: ThemeData(
          primaryColor: Colors.teal,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.teal
          )
        ),
      ),
    );
  }
}