import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'home_widget.dart' show HomeWidget;
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (ClasificacionPrimaria)] action in Home widget.
  ApiCallResponse? apiResultuwh;
  // Stores action output result for [Backend Call - API (Nuevo Semanal)] action in Home widget.
  ApiCallResponse? apiResult5ypLoadsemanalnuevo;
  // State field(s) for search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (SubClasificacion Codigo Ibic)] action in Container widget.
  ApiCallResponse? apiResultw1jSubClass;
  // Stores action output result for [Backend Call - API (Libros desde Clasificacion ibic)] action in Text widget.
  ApiCallResponse? apiResultueeSubclasLibr;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchFocusNode?.dispose();
    searchTextController?.dispose();
  }
}
