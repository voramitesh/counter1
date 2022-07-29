import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier{

  int i=0;
  void add(){
    i++;
    notifyListeners();
  }
  void Remove(){
    i--;
    notifyListeners();
  }
}