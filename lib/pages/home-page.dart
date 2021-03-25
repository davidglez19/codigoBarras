import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanner/pages/empresa-page.dart';
import 'package:scanner/pages/historial-page.dart';
import 'package:scanner/services/ui-service.dart';
import 'package:scanner/widgets/cutom_navigatorbar.dart';
import 'package:scanner/widgets/scann_botom.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Lector de Código de Barras URSoft'),
      ),
      body: _HomePageBody(),
     bottomNavigationBar: CustomNavigatorBar(),
     floatingActionButton: ScannBotton(),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
   );
  }
}
class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  //Acceder al elemento del servicio  
  final uiService = Provider.of<UiService>(context);

  final currentIndex = uiService.selectedMenuOpt;
  
  switch( currentIndex ){
    case 0 :
    return HistorialPage();

    case 1 :

    return EmpresaPage();

    default:
    return HistorialPage();
  }

    
  }
}