import 'package:flutter/material.dart';

class TripProvider extends ChangeNotifier {
  final Map<String, bool> _favorites = {};

  bool isFavorite(String tripId) {
    return _favorites[tripId] ?? false;
  }

  void toggleFavorite(String tripId) {
    _favorites[tripId] = !(_favorites[tripId] ?? false);
    notifyListeners();
  }
}
