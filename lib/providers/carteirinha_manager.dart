import 'package:flutter/material.dart';
import '../models/carteirinha.dart';

class CarteirinhaManager extends ChangeNotifier {
  final List<Carteirinha> _carteirinhas = [];

  List<Carteirinha> get carteirinhas => _carteirinhas;

  void adicionarCarteirinha(Carteirinha carteirinha) {
    _carteirinhas.add(carteirinha);
    notifyListeners();
  }
}