import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API Lectura Inspirada Group Code

class APILecturaInspiradaGroup {
  static String getBaseUrl() =>
      'https://api-lectura-python.analyticalpoint.com';
  static Map<String, String> headers = {};
  static BuscaTituloCall buscaTituloCall = BuscaTituloCall();
  static ClasificacionPrimariaCall clasificacionPrimariaCall =
      ClasificacionPrimariaCall();
  static SubClasificacionCodigoIbicCall subClasificacionCodigoIbicCall =
      SubClasificacionCodigoIbicCall();
  static LibrosDesdeClasificacionIbicCall librosDesdeClasificacionIbicCall =
      LibrosDesdeClasificacionIbicCall();
  static SubClasificacionNombreIbicCall subClasificacionNombreIbicCall =
      SubClasificacionNombreIbicCall();
  static DetalleLibroBusquedaIdCall detalleLibroBusquedaIdCall =
      DetalleLibroBusquedaIdCall();
  static NuevoSemanalCall nuevoSemanalCall = NuevoSemanalCall();
}

class BuscaTituloCall {
  Future<ApiCallResponse> call({
    String? titulo = '',
  }) async {
    final baseUrl = APILecturaInspiradaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Busca Titulo',
      apiUrl: '${baseUrl}/bmg_books/search?{titulo}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'titulo': titulo,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? precio(dynamic response) => (getJsonField(
        response,
        r'''$[:].pvp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? isbn(dynamic response) => (getJsonField(
        response,
        r'''$[:].isbn13''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? alto(dynamic response) => (getJsonField(
        response,
        r'''$[:].alto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? ancho(dynamic response) => (getJsonField(
        response,
        r'''$[:].ancho''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? peso(dynamic response) => (getJsonField(
        response,
        r'''$[:].peso''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? paginas(dynamic response) => (getJsonField(
        response,
        r'''$[:].paginas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? imagen(dynamic response) => (getJsonField(
        response,
        r'''$[:].imagen_tapa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? resumen(dynamic response) => (getJsonField(
        response,
        r'''$[:].resumen''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? idioma(dynamic response) => (getJsonField(
        response,
        r'''$[:].idioma_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paisedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].pais_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nombreclasificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre_clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? autor(dynamic response) => (getJsonField(
        response,
        r'''$[:].autor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? fechapublicacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_publicacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? editor(dynamic response) => (getJsonField(
        response,
        r'''$[:].editor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? notificaciondisponibilidadaltabaja(dynamic response) =>
      (getJsonField(
        response,
        r'''$[:].tipo_notificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? sello(dynamic response) => (getJsonField(
        response,
        r'''$[:].sello''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? formatoprintondemand(dynamic response) => (getJsonField(
        response,
        r'''$[:].formato''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? moneda(dynamic response) => (getJsonField(
        response,
        r'''$[:].moneda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? edicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? coleccion(dynamic response) => (getJsonField(
        response,
        r'''$[:].coleccion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? clasificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? codigobmg(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_bmg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ClasificacionPrimariaCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = APILecturaInspiradaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ClasificacionPrimaria',
      apiUrl: '${baseUrl}/bmg_books/classifications/primary',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? clasificacionprimaria(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre_clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? codigoibic(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_ibic''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? catidaddigitosibic(dynamic response) => (getJsonField(
        response,
        r'''$[:].max_length''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class SubClasificacionCodigoIbicCall {
  Future<ApiCallResponse> call({
    String? primaryCode = '',
  }) async {
    final baseUrl = APILecturaInspiradaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SubClasificacion Codigo Ibic',
      apiUrl:
          '${baseUrl}/bmg_books/classifications/${primaryCode}/subclassifications',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'primary_code': primaryCode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? codigoibic(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_ibic''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nombreclasificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre_clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LibrosDesdeClasificacionIbicCall {
  Future<ApiCallResponse> call({
    String? classification = '',
  }) async {
    final baseUrl = APILecturaInspiradaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Libros desde Clasificacion ibic',
      apiUrl: '${baseUrl}/bmg_books/classifications/books/${classification}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'classification': classification,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? precio(dynamic response) => (getJsonField(
        response,
        r'''$[:].pvp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? moneda(dynamic response) => (getJsonField(
        response,
        r'''$[:].moneda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? notificacionaltabaja(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_notificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? isbn13(dynamic response) => (getJsonField(
        response,
        r'''$[:].isbn13''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? alto(dynamic response) => (getJsonField(
        response,
        r'''$[:].alto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? ancho(dynamic response) => (getJsonField(
        response,
        r'''$[:].ancho''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? peso(dynamic response) => (getJsonField(
        response,
        r'''$[:].peso''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? edicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nombreclasificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre_clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? clasificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? sello(dynamic response) => (getJsonField(
        response,
        r'''$[:].sello''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? autor(dynamic response) => (getJsonField(
        response,
        r'''$[:].autor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? codigobmg(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_bmg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? fechapublicacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_publicacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paisedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].pais_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? editor(dynamic response) => (getJsonField(
        response,
        r'''$[:].editor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imagen(dynamic response) => (getJsonField(
        response,
        r'''$[:].imagen_tapa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? resumen(dynamic response) => (getJsonField(
        response,
        r'''$[:].resumen''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? paginas(dynamic response) => (getJsonField(
        response,
        r'''$[:].paginas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? idiomaedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].idioma_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SubClasificacionNombreIbicCall {
  Future<ApiCallResponse> call({
    String? nombreClassPrimary = '',
  }) async {
    final baseUrl = APILecturaInspiradaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SubClasificacion Nombre Ibic',
      apiUrl:
          '${baseUrl}/bmg_books/classifications/subclassifications_by_name/${nombreClassPrimary}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'nombre_class_primary': nombreClassPrimary,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? codigoibic(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_ibic''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nombreclasificacionibic(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre_clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DetalleLibroBusquedaIdCall {
  Future<ApiCallResponse> call({
    int? bookId,
  }) async {
    final baseUrl = APILecturaInspiradaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Detalle Libro Busqueda Id',
      apiUrl: '${baseUrl}/bmg_books/book/${bookId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'book_id': bookId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  double? pvp(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.pvp''',
      ));
  String? moneda(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.moneda''',
      ));
  String? formato(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.formato''',
      ));
  String? tiponotificacion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tipo_notificacion''',
      ));
  String? canalventa(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.canal_venta''',
      ));
  String? isbn13(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.isbn13''',
      ));
  int? alto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.alto''',
      ));
  int? ancho(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ancho''',
      ));
  int? peso(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.peso''',
      ));
  String? autor(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.autor''',
      ));
  String? sello(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sello''',
      ));
  String? clasificacion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.clasificacion''',
      ));
  String? nombreclasificacion(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nombre_clasificacion''',
      ));
  String? codigobmg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.codigo_bmg''',
      ));
  String? fechapublicacion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fecha_publicacion''',
      ));
  String? paisedicion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.pais_edicion''',
      ));
  String? editor(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.editor''',
      ));
  String? imagentapa(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imagen_tapa''',
      ));
  String? resumen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resumen''',
      ));
  int? paginas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.paginas''',
      ));
  String? idiomaedicion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.idioma_edicion''',
      ));
  String? edicion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.edicion''',
      ));
  String? titulo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.titulo''',
      ));
}

class NuevoSemanalCall {
  Future<ApiCallResponse> call({
    int? limit = 20,
    int? offset = 0,
  }) async {
    final baseUrl = APILecturaInspiradaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Nuevo Semanal',
      apiUrl: '${baseUrl}/bmg_books/nuevos-titulos-semana?{limit}&{offset}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'limit': limit,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? imagentapa(dynamic response) => (getJsonField(
        response,
        r'''$[:].imagen_tapa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? paginas(dynamic response) => (getJsonField(
        response,
        r'''$[:].paginas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? edicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? editor(dynamic response) => (getJsonField(
        response,
        r'''$[:].editor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? idiomaedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].idioma_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? peso(dynamic response) => (getJsonField(
        response,
        r'''$[:].peso''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? alto(dynamic response) => (getJsonField(
        response,
        r'''$[:].alto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? fechapublicacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_publicacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? resumen(dynamic response) => (getJsonField(
        response,
        r'''$[:].resumen''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? ancho(dynamic response) => (getJsonField(
        response,
        r'''$[:].ancho''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? canalventa(dynamic response) => (getJsonField(
        response,
        r'''$[:].canal_venta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? formato(dynamic response) => (getJsonField(
        response,
        r'''$[:].formato''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? moneda(dynamic response) => (getJsonField(
        response,
        r'''$[:].moneda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? pvp(dynamic response) => (getJsonField(
        response,
        r'''$[:].pvp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? tiponotificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_notificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? isbn13(dynamic response) => (getJsonField(
        response,
        r'''$[:].isbn13''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paisedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].pais_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? clasificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? sello(dynamic response) => (getJsonField(
        response,
        r'''$[:].sello''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? coleccion(dynamic response) => (getJsonField(
        response,
        r'''$[:].coleccion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? autor(dynamic response) => (getJsonField(
        response,
        r'''$[:].autor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? codigobmg(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_bmg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End API Lectura Inspirada Group Code

/// Start Api Lectura Inspirada Testing Group Code

class ApiLecturaInspiradaTestingGroup {
  static String getBaseUrl() =>
      'https://api-lectura-testing.analyticalpoint.com/';
  static Map<String, String> headers = {};
  static GetListadoDeLibrosCall getListadoDeLibrosCall =
      GetListadoDeLibrosCall();
  static GetBusquedaDeLibrosPorTituloCall getBusquedaDeLibrosPorTituloCall =
      GetBusquedaDeLibrosPorTituloCall();
  static GetClasificacionPrimaryCall getClasificacionPrimaryCall =
      GetClasificacionPrimaryCall();
  static ListadoDeLaSubclasificacionCall listadoDeLaSubclasificacionCall =
      ListadoDeLaSubclasificacionCall();
  static ListadoDeLibrosAPartirDelCodigoIBICCall
      listadoDeLibrosAPartirDelCodigoIBICCall =
      ListadoDeLibrosAPartirDelCodigoIBICCall();
  static DetalleDeLibroCall detalleDeLibroCall = DetalleDeLibroCall();
  static NuevasSemanalListadoCall nuevasSemanalListadoCall =
      NuevasSemanalListadoCall();
}

class GetListadoDeLibrosCall {
  Future<ApiCallResponse> call({
    int? offset = 0,
    int? limit = 250,
  }) async {
    final baseUrl = ApiLecturaInspiradaTestingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Listado de Libros',
      apiUrl: '${baseUrl}api/Book/Bmg_books/${limit}/${offset}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'limit': limit,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? clasificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? sello(dynamic response) => (getJsonField(
        response,
        r'''$[:].sello''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? codigobmg(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_bmg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? coleccion(dynamic response) => (getJsonField(
        response,
        r'''$[:].coleccion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? autor(dynamic response) => (getJsonField(
        response,
        r'''$[:].autor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? fechapublicacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_publicacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paisedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].pais_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? isbn13(dynamic response) => (getJsonField(
        response,
        r'''$[:].isbn13''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? canalventa(dynamic response) => (getJsonField(
        response,
        r'''$[:].canal_venta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tiponotificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_notificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? formato(dynamic response) => (getJsonField(
        response,
        r'''$[:].formato''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? moneda(dynamic response) => (getJsonField(
        response,
        r'''$[:].moneda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? pvp(dynamic response) => (getJsonField(
        response,
        r'''$[:].pvp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? alto(dynamic response) => (getJsonField(
        response,
        r'''$[:].alto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? ancho(dynamic response) => (getJsonField(
        response,
        r'''$[:].ancho''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? peso(dynamic response) => (getJsonField(
        response,
        r'''$[:].peso''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? edicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? idiomaedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].idioma_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? paginas(dynamic response) => (getJsonField(
        response,
        r'''$[:].paginas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? resumen(dynamic response) => (getJsonField(
        response,
        r'''$[:].resumen''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imagentapa(dynamic response) => (getJsonField(
        response,
        r'''$[:].imagen_tapa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? editor(dynamic response) => (getJsonField(
        response,
        r'''$[:].editor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetBusquedaDeLibrosPorTituloCall {
  Future<ApiCallResponse> call({
    String? titulo = '',
  }) async {
    final baseUrl = ApiLecturaInspiradaTestingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Busqueda de Libros por Titulo',
      apiUrl: '${baseUrl}api/Book/Bmg_books/Search/${titulo}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'titulo': titulo,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? pvp(dynamic response) => (getJsonField(
        response,
        r'''$[:].pvp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? moneda(dynamic response) => (getJsonField(
        response,
        r'''$[:].moneda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? formato(dynamic response) => (getJsonField(
        response,
        r'''$[:].formato''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tiponotificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_notificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? canalventa(dynamic response) => (getJsonField(
        response,
        r'''$[:].canal_venta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? isbn13(dynamic response) => (getJsonField(
        response,
        r'''$[:].isbn13''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? alto(dynamic response) => (getJsonField(
        response,
        r'''$[:].alto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? ancho(dynamic response) => (getJsonField(
        response,
        r'''$[:].ancho''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? peso(dynamic response) => (getJsonField(
        response,
        r'''$[:].peso''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? paginas(dynamic response) => (getJsonField(
        response,
        r'''$[:].paginas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? idiomaedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].idioma_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? edicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? resumen(dynamic response) => (getJsonField(
        response,
        r'''$[:].resumen''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imagentapa(dynamic response) => (getJsonField(
        response,
        r'''$[:].imagen_tapa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? editor(dynamic response) => (getJsonField(
        response,
        r'''$[:].editor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paisedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].pais_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? fechapublicacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_publicacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? codigobmg(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_bmg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? autor(dynamic response) => (getJsonField(
        response,
        r'''$[:].autor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? coleccion(dynamic response) => getJsonField(
        response,
        r'''$[:].coleccion''',
        true,
      ) as List?;
  List<String>? sello(dynamic response) => (getJsonField(
        response,
        r'''$[:].sello''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? clasificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetClasificacionPrimaryCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiLecturaInspiradaTestingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Clasificacion Primary',
      apiUrl: '${baseUrl}api/Book/Bmg_books/Classifications/Primary',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? codigoibic(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_ibic''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nombreclasificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre_clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ListadoDeLaSubclasificacionCall {
  Future<ApiCallResponse> call({
    String? primarycode = '',
  }) async {
    final baseUrl = ApiLecturaInspiradaTestingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Listado de la Subclasificacion',
      apiUrl:
          '${baseUrl}api/Book/Bmg_books/Classifications/${primarycode}/Subclassifications',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'primarycode': primarycode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? codigoibic(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_ibic''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? clasificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre_clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ListadoDeLibrosAPartirDelCodigoIBICCall {
  Future<ApiCallResponse> call({
    String? codigoibic = '',
  }) async {
    final baseUrl = ApiLecturaInspiradaTestingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Listado de Libros a partir del Codigo IBIC',
      apiUrl:
          '${baseUrl}api/Book/Bmg_books/Classifications/Books/${codigoibic}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'codigoibic': codigoibic,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? pvp(dynamic response) => (getJsonField(
        response,
        r'''$[:].pvp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? moneda(dynamic response) => (getJsonField(
        response,
        r'''$[:].moneda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? formato(dynamic response) => (getJsonField(
        response,
        r'''$[:].formato''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tiponotificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_notificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? canalventa(dynamic response) => (getJsonField(
        response,
        r'''$[:].canal_venta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? isbn13(dynamic response) => (getJsonField(
        response,
        r'''$[:].isbn13''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? alto(dynamic response) => (getJsonField(
        response,
        r'''$[:].alto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? ancho(dynamic response) => (getJsonField(
        response,
        r'''$[:].ancho''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? peso(dynamic response) => (getJsonField(
        response,
        r'''$[:].peso''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? paginas(dynamic response) => (getJsonField(
        response,
        r'''$[:].paginas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? idiomaedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].idioma_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? resumen(dynamic response) => (getJsonField(
        response,
        r'''$[:].resumen''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? edicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imagentapa(dynamic response) => (getJsonField(
        response,
        r'''$[:].imagen_tapa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? editor(dynamic response) => (getJsonField(
        response,
        r'''$[:].editor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paisedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].pais_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? fechapublicacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_publicacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? codigobmg(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_bmg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? autor(dynamic response) => (getJsonField(
        response,
        r'''$[:].autor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? coleccion(dynamic response) => (getJsonField(
        response,
        r'''$[:].coleccion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? sello(dynamic response) => (getJsonField(
        response,
        r'''$[:].sello''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? clasificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DetalleDeLibroCall {
  Future<ApiCallResponse> call({
    int? idbook,
  }) async {
    final baseUrl = ApiLecturaInspiradaTestingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Detalle de libro',
      apiUrl: '${baseUrl}api/Book/bmg_books/Book/${idbook}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'idbook': idbook,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? edicion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.edicion''',
      ));
  String? idiomaedicion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.idioma_edicion''',
      ));
  String? titulo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.titulo''',
      ));
  int? peso(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.peso''',
      ));
  int? ancho(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ancho''',
      ));
  int? alto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.alto''',
      ));
  String? isbn13(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.isbn13''',
      ));
  String? canalventa(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.canal_venta''',
      ));
  String? tiponotificacion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tipo_notificacion''',
      ));
  String? formato(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.formato''',
      ));
  String? moneda(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.moneda''',
      ));
  double? pvp(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.pvp''',
      ));
  int? paginas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.paginas''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? imagentapa(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imagen_tapa''',
      ));
  String? resumen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resumen''',
      ));
  String? editor(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.editor''',
      ));
  String? paisedicion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.pais_edicion''',
      ));
  String? fechapublicacion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fecha_publicacion''',
      ));
  String? codigobmg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.codigo_bmg''',
      ));
  String? autor(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.autor''',
      ));
  String? sello(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sello''',
      ));
  String? clasificacion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.clasificacion''',
      ));
}

class NuevasSemanalListadoCall {
  Future<ApiCallResponse> call({
    int? offset = 0,
  }) async {
    final baseUrl = ApiLecturaInspiradaTestingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Nuevas Semanal Listado',
      apiUrl: '${baseUrl}api/NewBook/NewBooKSemanal/${offset}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? pvp(dynamic response) => (getJsonField(
        response,
        r'''$[:].pvp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? moneda(dynamic response) => (getJsonField(
        response,
        r'''$[:].moneda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? formnato(dynamic response) => (getJsonField(
        response,
        r'''$[:].formato''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tiponotificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_notificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? canalventa(dynamic response) => (getJsonField(
        response,
        r'''$[:].canal_venta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? isbn13(dynamic response) => (getJsonField(
        response,
        r'''$[:].isbn13''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? alto(dynamic response) => (getJsonField(
        response,
        r'''$[:].alto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? ancho(dynamic response) => (getJsonField(
        response,
        r'''$[:].ancho''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? peso(dynamic response) => (getJsonField(
        response,
        r'''$[:].peso''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? edicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? paginas(dynamic response) => (getJsonField(
        response,
        r'''$[:].paginas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? resumen(dynamic response) => (getJsonField(
        response,
        r'''$[:].resumen''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? idiomaedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].idioma_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imagentapa(dynamic response) => (getJsonField(
        response,
        r'''$[:].imagen_tapa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? editor(dynamic response) => (getJsonField(
        response,
        r'''$[:].editor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paiedicion(dynamic response) => (getJsonField(
        response,
        r'''$[:].pais_edicion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? fechapublicacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha_publicacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? codigobmg(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo_bmg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? autor(dynamic response) => (getJsonField(
        response,
        r'''$[:].autor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? coleccion(dynamic response) => getJsonField(
        response,
        r'''$[:].coleccion''',
        true,
      ) as List?;
  List<String>? sello(dynamic response) => (getJsonField(
        response,
        r'''$[:].sello''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? clasificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].clasificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End Api Lectura Inspirada Testing Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
