

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:scanner/services/producto_provider.dart';
import 'package:scanner/services/ui-service.dart';



class ScannBotton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productosProviders = Provider.of<ProductosProvider>(context);
    final uiService = Provider.of<UiService>(context);
    return FloatingActionButton(
      onPressed: () async {
        // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        //                                             '#2D96F5', 
        //                                             'Cancelar', 
        //                                             false, 
        //                                             ScanMode.BARCODE);
       
       productosProviders.idCodigo =  '0751214586285';
       print('Boton ${productosProviders.idCodigo}');
       uiService.selectedMenuOpt = 1;

      },
      child: Icon(Icons.qr_code),
   );
  }
}