import '/comoponts/article_contain/article_contain_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'artical_model.dart';
export 'artical_model.dart';

class ArticalWidget extends StatefulWidget {
  const ArticalWidget({super.key});

  @override
  State<ArticalWidget> createState() => _ArticalWidgetState();
}

class _ArticalWidgetState extends State<ArticalWidget> {
  late ArticalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArticalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 21.0),
          child: Text(
            'Article',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SF Pro Display',
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  lineHeight: 1.5,
                ),
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
                    16.0,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final articlelist = functions
                                  .filterdata('Article For You',
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
                            children: List.generate(articlelist.length,
                                (articlelistIndex) {
                              final articlelistItem =
                                  articlelist[articlelistIndex];
                              return wrapWithModel(
                                model: _model.articleContainModels.getModel(
                                  articlelistIndex.toString(),
                                  articlelistIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: ArticleContainWidget(
                                  key: Key(
                                    'Key91r_${articlelistIndex.toString()}',
                                  ),
                                  data: articlelistItem,
                                  ontapcontain: () async {
                                    if (articlelistItem.isFav == true) {
                                      FFAppState().updateDeatilsAtIndex(
                                        articlelistItem.id,
                                        (e) => e..isFav = false,
                                      );
                                      safeSetState(() {});
                                    } else {
                                      FFAppState().updateDeatilsAtIndex(
                                        articlelistItem.id,
                                        (e) => e..isFav = true,
                                      );
                                      safeSetState(() {});
                                    }
                                  },
                                  ontapfull: () async {
                                    context.pushNamed(
                                      ArticleDetailWidget.routeName,
                                      queryParameters: {
                                        'articledetail': serializeParam(
                                          articlelistItem,
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
                return Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Lottie.asset(
                    'assets/jsons/No_Wifi.json',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                );
              }
            },
          ),
        ),
      ].addToStart(SizedBox(height: 16.0)),
    );
  }
}
