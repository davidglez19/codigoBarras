import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanner/models/scann_model.dart';
import 'package:scanner/services/producto_provider.dart';


class HistorialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productosProvider = Provider.of<ProductosProvider>(context);
    List<Productos> productos = productosProvider.productosList;
    print(productos);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: ListView.builder(
          itemCount: (productos == null) ? 0 : productos.length,
          itemBuilder: (BuildContext contex, int index){
            return ListTile(
              leading: Icon(Icons.domain_verification_outlined),
              title: Text(productos[index].descripcion),
              subtitle:Text('\$${productos[index].precio}') ,
            );
          }
        )
     ),
   );
  }
}