import '/comoponts/comen_componet/comen_componet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'around_you_screen_model.dart';
export 'around_you_screen_model.dart';

class AroundYouScreenWidget extends StatefulWidget {
  const AroundYouScreenWidget({super.key});

  static String routeName = 'AroundYouScreen';
  static String routePath = '/aroundYouScreen';

  @override
  State<AroundYouScreenWidget> createState() => _AroundYouScreenWidgetState();
}

class _AroundYouScreenWidgetState extends State<AroundYouScreenWidget> {
  late AroundYouScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AroundYouScreenModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 21.0, 16.0, 18.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent3,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.chevron_left,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Around You',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SF Pro Display',
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            lineHeight: 1.5,
                          ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(FilterScreenWidget.routeName);
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent3,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.tune_sharp,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    if (FFAppState().connected) {
                      return ListView(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          0,
                          0,
                          20.0,
                        ),
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final aroundlist = functions
                                        .filterdata('Around You',
                                            FFAppState().deatils.toList())
                                        ?.toList() ??
                                    [];

                                return Wrap(
                                  spacing: 20.0,
                                  runSpacing: 20.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: List.generate(aroundlist.length,
                                      (aroundlistIndex) {
                                    final aroundlistItem =
                                        aroundlist[aroundlistIndex];
                                    return wrapWithModel(
                                      model:
                                          _model.comenComponetModels.getModel(
                                        aroundlistIndex.toString(),
                                        aroundlistIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      child: ComenComponetWidget(
                                        key: Key(
                                          'Keyqj5_${aroundlistIndex.toString()}',
                                        ),
                                        data: aroundlistItem,
                                        ontapcontain: () async {
                                          if (aroundlistItem.isFav == true) {
                                            FFAppState().updateDeatilsAtIndex(
                                              aroundlistItem.id,
                                              (e) => e..isFav = false,
                                            );
                                            safeSetState(() {});
                                          } else {
                                            FFAppState().updateDeatilsAtIndex(
                                              aroundlistItem.id,
                                              (e) => e..isFav = true,
                                            );
                                            safeSetState(() {});
                                          }
                                        },
                                        ontapfull: () async {
                                          context.pushNamed(
                                            AboutAmeliaWidget.routeName,
                                            queryParameters: {
                                              'detaildata': serializeParam(
                                                aroundlistItem,
                                                ParamType.DataStruct,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Lottie.asset(
                        'assets/jsons/No_Wifi.json',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.contain,
                        animate: true,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
