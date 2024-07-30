import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'subclasificacion_libro_model.dart';
export 'subclasificacion_libro_model.dart';

class SubclasificacionLibroWidget extends StatefulWidget {
  const SubclasificacionLibroWidget({super.key});

  @override
  State<SubclasificacionLibroWidget> createState() =>
      _SubclasificacionLibroWidgetState();
}

class _SubclasificacionLibroWidgetState
    extends State<SubclasificacionLibroWidget> {
  late SubclasificacionLibroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubclasificacionLibroModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: 405.0,
                height: 799.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final listadoLibros =
                          FFAppState().librosClasificacion.toList();

                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 0.75,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: listadoLibros.length,
                        itemBuilder: (context, listadoLibrosIndex) {
                          final listadoLibrosItem =
                              listadoLibros[listadoLibrosIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().libroDetalle = listadoLibrosItem;
                              setState(() {});
                              if (FFAppState().libroDetalle != null) {
                                _model.apiResultvzfLibroid =
                                    await APILecturaInspiradaGroup
                                        .detalleLibroBusquedaIdCall
                                        .call(
                                  bookId: getJsonField(
                                    listadoLibrosItem,
                                    r'''$.id''',
                                  ),
                                );

                                if ((_model.apiResultvzfLibroid?.succeeded ??
                                    true)) {
                                  FFAppState().libroDetalle =
                                      (_model.apiResultvzfLibroid?.jsonBody ??
                                          '');
                                  setState(() {});

                                  context.pushNamed(
                                    'detalleLibro',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.bottomToTop,
                                      ),
                                    },
                                  );
                                }
                              }

                              setState(() {});
                            },
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  getJsonField(
                                    listadoLibrosItem,
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
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('Home');

                  FFAppState().librosClasificacion = [];
                  FFAppState().subClasificacionSeleccionada = null;
                  setState(() {});
                },
                child: Icon(
                  Icons.chevron_left_sharp,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 32.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
