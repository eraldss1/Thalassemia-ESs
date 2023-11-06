// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GejalaStruct extends BaseStruct {
  GejalaStruct({
    String? kodeGejala,
    String? namaGejala,
    double? cFPakar,
  })  : _kodeGejala = kodeGejala,
        _namaGejala = namaGejala,
        _cFPakar = cFPakar;

  // "kodeGejala" field.
  String? _kodeGejala;
  String get kodeGejala => _kodeGejala ?? '';
  set kodeGejala(String? val) => _kodeGejala = val;
  bool hasKodeGejala() => _kodeGejala != null;

  // "namaGejala" field.
  String? _namaGejala;
  String get namaGejala => _namaGejala ?? '';
  set namaGejala(String? val) => _namaGejala = val;
  bool hasNamaGejala() => _namaGejala != null;

  // "CFPakar" field.
  double? _cFPakar;
  double get cFPakar => _cFPakar ?? 0.0;
  set cFPakar(double? val) => _cFPakar = val;
  void incrementCFPakar(double amount) => _cFPakar = cFPakar + amount;
  bool hasCFPakar() => _cFPakar != null;

  static GejalaStruct fromMap(Map<String, dynamic> data) => GejalaStruct(
        kodeGejala: data['kodeGejala'] as String?,
        namaGejala: data['namaGejala'] as String?,
        cFPakar: castToType<double>(data['CFPakar']),
      );

  static GejalaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? GejalaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'kodeGejala': _kodeGejala,
        'namaGejala': _namaGejala,
        'CFPakar': _cFPakar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'kodeGejala': serializeParam(
          _kodeGejala,
          ParamType.String,
        ),
        'namaGejala': serializeParam(
          _namaGejala,
          ParamType.String,
        ),
        'CFPakar': serializeParam(
          _cFPakar,
          ParamType.double,
        ),
      }.withoutNulls;

  static GejalaStruct fromSerializableMap(Map<String, dynamic> data) =>
      GejalaStruct(
        kodeGejala: deserializeParam(
          data['kodeGejala'],
          ParamType.String,
          false,
        ),
        namaGejala: deserializeParam(
          data['namaGejala'],
          ParamType.String,
          false,
        ),
        cFPakar: deserializeParam(
          data['CFPakar'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'GejalaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GejalaStruct &&
        kodeGejala == other.kodeGejala &&
        namaGejala == other.namaGejala &&
        cFPakar == other.cFPakar;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([kodeGejala, namaGejala, cFPakar]);
}

GejalaStruct createGejalaStruct({
  String? kodeGejala,
  String? namaGejala,
  double? cFPakar,
}) =>
    GejalaStruct(
      kodeGejala: kodeGejala,
      namaGejala: namaGejala,
      cFPakar: cFPakar,
    );
