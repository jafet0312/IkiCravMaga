import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _tamanioTextos = prefs.getDouble('ff_tamanioTextos') ?? _tamanioTextos;
    });
    _safeInit(() {
      _tamanioTexto = prefs.getInt('ff_tamanioTexto') ?? _tamanioTexto;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _tamanioTextos = 12.0;
  double get tamanioTextos => _tamanioTextos;
  set tamanioTextos(double value) {
    _tamanioTextos = value;
    prefs.setDouble('ff_tamanioTextos', value);
  }

  String _URLImagen = '';
  String get URLImagen => _URLImagen;
  set URLImagen(String value) {
    _URLImagen = value;
  }

  int _tamanioTexto = 0;
  int get tamanioTexto => _tamanioTexto;
  set tamanioTexto(int value) {
    _tamanioTexto = value;
    prefs.setInt('ff_tamanioTexto', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
