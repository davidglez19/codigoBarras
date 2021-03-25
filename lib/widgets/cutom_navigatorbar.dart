import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanner/services/ui-service.dart';

class CustomNavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final uiService = Provider.of<UiService>(context);
    final currentIndex = uiService.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: (int i) => uiService.selectedMenuOpt = i,
      currentIndex: currentIndex,
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'Historial'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.remove_red_eye_outlined),
          label: 'Resultado'
        ),
      ],
    );
  }
}