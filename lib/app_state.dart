import 'package:flutter/material.dart';

import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<GejalaStruct> _listGejala = [
    GejalaStruct.fromSerializableMap(jsonDecode(
        '{"kodeGejala":"G01","namaGejala":"Anemia","CFPakar":"0.6"}')),
    GejalaStruct.fromSerializableMap(jsonDecode(
        '{"kodeGejala":"G02","namaGejala":"Susah Tidur","CFPakar":"0.8"}')),
    GejalaStruct.fromSerializableMap(jsonDecode(
        '{"kodeGejala":"G03","namaGejala":"Lemas dan Lesu","CFPakar":"0.8"}')),
    GejalaStruct.fromSerializableMap(jsonDecode(
        '{"kodeGejala":"G04","namaGejala":"Mudah Lelah (Tanpa Bekerja)","CFPakar":"0.4"}')),
    GejalaStruct.fromSerializableMap(jsonDecode(
        '{"kodeGejala":"G05","namaGejala":"Terlihat Pucat (Kekurangan Darah)","CFPakar":"0.6"}')),
    GejalaStruct.fromSerializableMap(jsonDecode(
        '{"kodeGejala":"G06","namaGejala":"Warna Kulit Menguning","CFPakar":"0.6"}')),
    GejalaStruct.fromSerializableMap(jsonDecode(
        '{"kodeGejala":"G07","namaGejala":"Pertumbuhan Lambat","CFPakar":"0.8"}')),
    GejalaStruct.fromSerializableMap(jsonDecode(
        '{"kodeGejala":"G08","namaGejala":"Perut Membengkak (Limpa)","CFPakar":"0.4"}')),
    GejalaStruct.fromSerializableMap(jsonDecode(
        '{"kodeGejala":"G09","namaGejala":"Urin Berwarna Gelap","CFPakar":"0.2"}')),
    GejalaStruct.fromSerializableMap(
        jsonDecode('{"kodeGejala":"G10","namaGejala":"Lemah","CFPakar":"0.8"}'))
  ];
  List<GejalaStruct> get listGejala => _listGejala;
  set listGejala(List<GejalaStruct> _value) {
    _listGejala = _value;
  }

  void addToListGejala(GejalaStruct _value) {
    _listGejala.add(_value);
  }

  void removeFromListGejala(GejalaStruct _value) {
    _listGejala.remove(_value);
  }

  void removeAtIndexFromListGejala(int _index) {
    _listGejala.removeAt(_index);
  }

  void updateListGejalaAtIndex(
    int _index,
    GejalaStruct Function(GejalaStruct) updateFn,
  ) {
    _listGejala[_index] = updateFn(_listGejala[_index]);
  }

  void insertAtIndexInListGejala(int _index, GejalaStruct _value) {
    _listGejala.insert(_index, _value);
  }

  List<double> _userAnswers = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<double> get userAnswers => _userAnswers;
  set userAnswers(List<double> _value) {
    _userAnswers = _value;
  }

  void addToUserAnswers(double _value) {
    _userAnswers.add(_value);
  }

  void removeFromUserAnswers(double _value) {
    _userAnswers.remove(_value);
  }

  void removeAtIndexFromUserAnswers(int _index) {
    _userAnswers.removeAt(_index);
  }

  void updateUserAnswersAtIndex(
    int _index,
    double Function(double) updateFn,
  ) {
    _userAnswers[_index] = updateFn(_userAnswers[_index]);
  }

  void insertAtIndexInUserAnswers(int _index, double _value) {
    _userAnswers.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
