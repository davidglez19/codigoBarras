import 'package:flutter/material.dart';

class UiService extends ChangeNotifier{

  int _selectedMenuOpt = 0;

  

  int get selectedMenuOpt {
    return this._selectedMenuOpt;
  }

  set selectedMenuOpt(int seleccted) {
      this._selectedMenuOpt = seleccted;
      notifyListeners();
  }


  


}