import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultuwh =
          await APILecturaInspiradaGroup.clasificacionPrimariaCall.call();

      if ((_model.apiResultuwh?.succeeded ?? true)) {
        FFAppState().clasificacionPrimary =
            (_model.apiResultuwh?.jsonBody ?? '').toList().cast<dynamic>();
        setState(() {});
        _model.apiResult5ypLoadsemanalnuevo =
            await APILecturaInspiradaGroup.nuevoSemanalCall.call(
          limit: FFAppConstants.SemanalLimit,
          offset: FFAppConstants.SemanalOffset,
        );

        if ((_model.apiResult5ypLoadsemanalnuevo?.succeeded ?? true)) {
          FFAppState().semanalnuevostodos =
              (_model.apiResult5ypLoadsemanalnuevo?.jsonBody ?? '')
                  .toList()
                  .cast<dynamic>();
          setState(() {});
          return;
        } else {
          return;
        }
      } else {
        return;
      }
    });

    _model.searchTextController ??= TextEditingController();
    _model.searchFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1120.0.ms,
            begin: Offset(-46.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 720.0.ms,
            begin: Offset(0.0, -27.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 720.0.ms,
            begin: Offset(0.0, -27.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Text(
                                  'Inspiración para leer',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 23.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation']!),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 15.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: _model.searchTextController,
                                  focusNode: _model.searchFocusNode,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: false,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF070707),
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Busca título libro...',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFCBCBD4),
                                        width: 1.0,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFF8F7FA),
                                    prefixIcon: Icon(
                                      Icons.search_sharp,
                                      color: Color(0xFFCBCBD4),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFCBCBD4),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  validator: _model
                                      .searchTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ],
                          ).animateOnPageLoad(
                              animationsMap['rowOnPageLoadAnimation1']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 15.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController ??=
                                    FormFieldController<String>(null),
                                options: FFAppState()
                                    .clasificacionPrimary
                                    .map((e) => getJsonField(
                                          e,
                                          r'''$.nombre_clasificacion''',
                                        ))
                                    .toList()
                                    .map((e) => e.toString())
                                    .toList(),
                                onChanged: (val) =>
                                    setState(() => _model.dropDownValue = val),
                                width: 300.0,
                                height: 56.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Please select...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ],
                          ).animateOnPageLoad(
                              animationsMap['rowOnPageLoadAnimation2']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Builder(
                            builder: (context) {
                              final classifStateLocal =
                                  FFAppState().clasificacionPrimary.toList();

                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children:
                                      List.generate(classifStateLocal.length,
                                          (classifStateLocalIndex) {
                                    final classifStateLocalItem =
                                        classifStateLocal[
                                            classifStateLocalIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 5.0, 5.0),
                                      child: FlipCard(
                                        fill: Fill.fillBack,
                                        direction: FlipDirection.VERTICAL,
                                        speed: 400,
                                        front: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            var _shouldSetState = false;
                                            FFAppState()
                                                    .seleccionadaClasificacion =
                                                classifStateLocalItem;
                                            setState(() {});
                                            if (FFAppState()
                                                    .seleccionadaClasificacion !=
                                                null) {
                                              _model.apiResultw1jSubClass =
                                                  await APILecturaInspiradaGroup
                                                      .subClasificacionCodigoIbicCall
                                                      .call(
                                                primaryCode: getJsonField(
                                                  FFAppState()
                                                      .seleccionadaClasificacion,
                                                  r'''$.codigo_ibic''',
                                                ).toString(),
                                              );

                                              _shouldSetState = true;
                                              if ((_model.apiResultw1jSubClass
                                                      ?.succeeded ??
                                                  true)) {
                                                FFAppState()
                                                        .subClasificacionLocalState =
                                                    (_model.apiResultw1jSubClass
                                                                ?.jsonBody ??
                                                            '')
                                                        .toList()
                                                        .cast<dynamic>();
                                                setState(() {});
                                              } else {
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }

                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            } else {
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }

                                            if (_shouldSetState)
                                              setState(() {});
                                          },
                                          child: Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF1DDD3),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(12.0),
                                                bottomRight:
                                                    Radius.circular(12.0),
                                                topLeft: Radius.circular(12.0),
                                                topRight: Radius.circular(12.0),
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  getJsonField(
                                                    classifStateLocalItem,
                                                    r'''$.nombre_clasificacion''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 11.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        back: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                              topLeft: Radius.circular(12.0),
                                              topRight: Radius.circular(12.0),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 0.0),
                                              child: Text(
                                                getJsonField(
                                                  classifStateLocalItem,
                                                  r'''$.nombre_clasificacion''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              );
                            },
                          ),
                        ),
                        if (FFAppState().seleccionadaClasificacion != null)
                          Builder(
                            builder: (context) {
                              final subClasifVariablesState = FFAppState()
                                  .subClasificacionLocalState
                                  .toList();

                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    subClasifVariablesState.length,
                                    (subClasifVariablesStateIndex) {
                                  final subClasifVariablesStateItem =
                                      subClasifVariablesState[
                                          subClasifVariablesStateIndex];
                                  return ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          var _shouldSetState = false;
                                          FFAppState()
                                                  .subClasificacionSeleccionada =
                                              subClasifVariablesStateItem;
                                          setState(() {});
                                          if (FFAppState()
                                                  .subClasificacionSeleccionada !=
                                              null) {
                                            _model.apiResultueeSubclasLibr =
                                                await APILecturaInspiradaGroup
                                                    .librosDesdeClasificacionIbicCall
                                                    .call(
                                              classification: getJsonField(
                                                FFAppState()
                                                    .subClasificacionSeleccionada,
                                                r'''$.codigo_ibic''',
                                              ).toString(),
                                            );

                                            _shouldSetState = true;
                                            if ((_model.apiResultueeSubclasLibr
                                                    ?.succeeded ??
                                                true)) {
                                              FFAppState().librosClasificacion =
                                                  (_model.apiResultueeSubclasLibr
                                                              ?.jsonBody ??
                                                          '')
                                                      .toList()
                                                      .cast<dynamic>();
                                              setState(() {});

                                              context.pushNamed(
                                                'SubclasificacionLibro',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .bottomToTop,
                                                  ),
                                                },
                                              );
                                            } else {
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }

                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          }
                                          if (_shouldSetState) setState(() {});
                                        },
                                        child: Text(
                                          getJsonField(
                                            subClasifVariablesStateItem,
                                            r'''$.nombre_clasificacion''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              );
                            },
                          ),
                        Container(
                          width: 405.0,
                          height: 386.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Builder(
                            builder: (context) {
                              final nuevosemanal =
                                  FFAppState().semanalnuevostodos.toList();

                              return GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0,
                                  childAspectRatio: 0.75,
                                ),
                                scrollDirection: Axis.vertical,
                                itemCount: nuevosemanal.length,
                                itemBuilder: (context, nuevosemanalIndex) {
                                  final nuevosemanalItem =
                                      nuevosemanal[nuevosemanalIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().libroDetalle =
                                          nuevosemanalItem;
                                      setState(() {});

                                      context.pushNamed('detalleLibro');
                                    },
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          getJsonField(
                                            nuevosemanalItem,
                                            r'''$.imagen_tapa''',
                                          ).toString(),
                                          width: 300.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
