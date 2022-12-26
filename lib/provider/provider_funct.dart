import 'package:flutter/material.dart';

class Providerfunction extends ChangeNotifier{
  List<String>_fav=[];
  List<String> get words=>_fav;

  void toggleFavorite(String word ){
    final isExist=_fav.contains(word);
    if(isExist){
      _fav.remove(word);
    }
    else{
      _fav.add(word);
    }
    notifyListeners();
  }
  bool symbol(String symbols ){
    final isExist =_fav.contains(symbols);
    return isExist;

  }


}