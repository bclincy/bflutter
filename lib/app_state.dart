import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  bool _isAuthenticated = false;
  User? _user;

  bool get isAuthenticated => _isAuthenticated;
  User? get user => _user;

  void setUser(User? user) {
    _user = user;
    _isAuthenticated = user != null;
    notifyListeners();
  }
}
