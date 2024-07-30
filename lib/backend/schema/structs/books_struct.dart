// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BooksStruct extends BaseStruct {
  BooksStruct({
    String? titulo,
    String? portadaUrl,
    String? autor,
    String? isnb,
    String? resumen,
  })  : _titulo = titulo,
        _portadaUrl = portadaUrl,
        _autor = autor,
        _isnb = isnb,
        _resumen = resumen;

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  // "Portada_url" field.
  String? _portadaUrl;
  String get portadaUrl => _portadaUrl ?? '';
  set portadaUrl(String? val) => _portadaUrl = val;

  bool hasPortadaUrl() => _portadaUrl != null;

  // "autor" field.
  String? _autor;
  String get autor => _autor ?? '';
  set autor(String? val) => _autor = val;

  bool hasAutor() => _autor != null;

  // "isnb" field.
  String? _isnb;
  String get isnb => _isnb ?? '';
  set isnb(String? val) => _isnb = val;

  bool hasIsnb() => _isnb != null;

  // "resumen" field.
  String? _resumen;
  String get resumen => _resumen ?? '';
  set resumen(String? val) => _resumen = val;

  bool hasResumen() => _resumen != null;

  static BooksStruct fromMap(Map<String, dynamic> data) => BooksStruct(
        titulo: data['Titulo'] as String?,
        portadaUrl: data['Portada_url'] as String?,
        autor: data['autor'] as String?,
        isnb: data['isnb'] as String?,
        resumen: data['resumen'] as String?,
      );

  static BooksStruct? maybeFromMap(dynamic data) =>
      data is Map ? BooksStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Titulo': _titulo,
        'Portada_url': _portadaUrl,
        'autor': _autor,
        'isnb': _isnb,
        'resumen': _resumen,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'Portada_url': serializeParam(
          _portadaUrl,
          ParamType.String,
        ),
        'autor': serializeParam(
          _autor,
          ParamType.String,
        ),
        'isnb': serializeParam(
          _isnb,
          ParamType.String,
        ),
        'resumen': serializeParam(
          _resumen,
          ParamType.String,
        ),
      }.withoutNulls;

  static BooksStruct fromSerializableMap(Map<String, dynamic> data) =>
      BooksStruct(
        titulo: deserializeParam(
          data['Titulo'],
          ParamType.String,
          false,
        ),
        portadaUrl: deserializeParam(
          data['Portada_url'],
          ParamType.String,
          false,
        ),
        autor: deserializeParam(
          data['autor'],
          ParamType.String,
          false,
        ),
        isnb: deserializeParam(
          data['isnb'],
          ParamType.String,
          false,
        ),
        resumen: deserializeParam(
          data['resumen'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BooksStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BooksStruct &&
        titulo == other.titulo &&
        portadaUrl == other.portadaUrl &&
        autor == other.autor &&
        isnb == other.isnb &&
        resumen == other.resumen;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([titulo, portadaUrl, autor, isnb, resumen]);
}

BooksStruct createBooksStruct({
  String? titulo,
  String? portadaUrl,
  String? autor,
  String? isnb,
  String? resumen,
}) =>
    BooksStruct(
      titulo: titulo,
      portadaUrl: portadaUrl,
      autor: autor,
      isnb: isnb,
      resumen: resumen,
    );
