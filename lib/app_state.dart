import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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

  List<dynamic> _clasificacionPrimary = [];
  List<dynamic> get clasificacionPrimary => _clasificacionPrimary;
  set clasificacionPrimary(List<dynamic> value) {
    _clasificacionPrimary = value;
  }

  void addToClasificacionPrimary(dynamic value) {
    clasificacionPrimary.add(value);
  }

  void removeFromClasificacionPrimary(dynamic value) {
    clasificacionPrimary.remove(value);
  }

  void removeAtIndexFromClasificacionPrimary(int index) {
    clasificacionPrimary.removeAt(index);
  }

  void updateClasificacionPrimaryAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    clasificacionPrimary[index] = updateFn(_clasificacionPrimary[index]);
  }

  void insertAtIndexInClasificacionPrimary(int index, dynamic value) {
    clasificacionPrimary.insert(index, value);
  }

  dynamic _seleccionadaClasificacion;
  dynamic get seleccionadaClasificacion => _seleccionadaClasificacion;
  set seleccionadaClasificacion(dynamic value) {
    _seleccionadaClasificacion = value;
  }

  List<dynamic> _subClasificacionLocalState = [];
  List<dynamic> get subClasificacionLocalState => _subClasificacionLocalState;
  set subClasificacionLocalState(List<dynamic> value) {
    _subClasificacionLocalState = value;
  }

  void addToSubClasificacionLocalState(dynamic value) {
    subClasificacionLocalState.add(value);
  }

  void removeFromSubClasificacionLocalState(dynamic value) {
    subClasificacionLocalState.remove(value);
  }

  void removeAtIndexFromSubClasificacionLocalState(int index) {
    subClasificacionLocalState.removeAt(index);
  }

  void updateSubClasificacionLocalStateAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    subClasificacionLocalState[index] =
        updateFn(_subClasificacionLocalState[index]);
  }

  void insertAtIndexInSubClasificacionLocalState(int index, dynamic value) {
    subClasificacionLocalState.insert(index, value);
  }

  dynamic _subClasificacionSeleccionada;
  dynamic get subClasificacionSeleccionada => _subClasificacionSeleccionada;
  set subClasificacionSeleccionada(dynamic value) {
    _subClasificacionSeleccionada = value;
  }

  List<dynamic> _librosClasificacion = [];
  List<dynamic> get librosClasificacion => _librosClasificacion;
  set librosClasificacion(List<dynamic> value) {
    _librosClasificacion = value;
  }

  void addToLibrosClasificacion(dynamic value) {
    librosClasificacion.add(value);
  }

  void removeFromLibrosClasificacion(dynamic value) {
    librosClasificacion.remove(value);
  }

  void removeAtIndexFromLibrosClasificacion(int index) {
    librosClasificacion.removeAt(index);
  }

  void updateLibrosClasificacionAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    librosClasificacion[index] = updateFn(_librosClasificacion[index]);
  }

  void insertAtIndexInLibrosClasificacion(int index, dynamic value) {
    librosClasificacion.insert(index, value);
  }

  dynamic _libroDetalle;
  dynamic get libroDetalle => _libroDetalle;
  set libroDetalle(dynamic value) {
    _libroDetalle = value;
  }

  List<dynamic> _semanalnuevostodos = [];
  List<dynamic> get semanalnuevostodos => _semanalnuevostodos;
  set semanalnuevostodos(List<dynamic> value) {
    _semanalnuevostodos = value;
  }

  void addToSemanalnuevostodos(dynamic value) {
    semanalnuevostodos.add(value);
  }

  void removeFromSemanalnuevostodos(dynamic value) {
    semanalnuevostodos.remove(value);
  }

  void removeAtIndexFromSemanalnuevostodos(int index) {
    semanalnuevostodos.removeAt(index);
  }

  void updateSemanalnuevostodosAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    semanalnuevostodos[index] = updateFn(_semanalnuevostodos[index]);
  }

  void insertAtIndexInSemanalnuevostodos(int index, dynamic value) {
    semanalnuevostodos.insert(index, value);
  }

  dynamic _semanalnuevoselegido;
  dynamic get semanalnuevoselegido => _semanalnuevoselegido;
  set semanalnuevoselegido(dynamic value) {
    _semanalnuevoselegido = value;
  }
}
