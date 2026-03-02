import '/comoponts/appbar/appbar_widget.dart';
import '/comoponts/comen_componet/comen_componet_widget.dart';
import '/dailogs/favourite_empty/favourite_empty_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'favourite_screen_model.dart';
export 'favourite_screen_model.dart';

class FavouriteScreenWidget extends StatefulWidget {
  const FavouriteScreenWidget({super.key});

  static String routeName = 'FavouriteScreen';
  static String routePath = '/favouriteScreen';

  @override
  State<FavouriteScreenWidget> createState() => _FavouriteScreenWidgetState();
}

class _FavouriteScreenWidgetState extends State<FavouriteScreenWidget> {
  late FavouriteScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavouriteScreenModel());

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
              wrapWithModel(
                model: _model.appbarModel,
                updateCallback: () => safeSetState(() {}),
                child: AppbarWidget(
                  title: 'Favourite',
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
                                12.0, 0.0, 12.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final favouritelist = FFAppState()
                                    .deatils
                                    .where((e) => e.isFav)
                                    .toList();
                                if (favouritelist.isEmpty) {
                                  return Center(
                                    child: FavouriteEmptyWidget(),
                                  );
                                }

                                return Wrap(
                                  spacing: 20.0,
                                  runSpacing: 20.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: List.generate(favouritelist.length,
                                      (favouritelistIndex) {
                                    final favouritelistItem =
                                        favouritelist[favouritelistIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: wrapWithModel(
                                        model:
                                            _model.comenComponetModels.getModel(
                                          favouritelistIndex.toString(),
                                          favouritelistIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ComenComponetWidget(
                                          key: Key(
                                            'Key5hp_${favouritelistIndex.toString()}',
                                          ),
                                          data: favouritelistItem,
                                          ontapcontain: () async {
                                            if (favouritelistItem.isFav ==
                                                true) {
                                              FFAppState().updateDeatilsAtIndex(
                                                favouritelistItem.id,
                                                (e) => e..isFav = false,
                                              );
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().updateDeatilsAtIndex(
                                                favouritelistItem.id,
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
                                                  favouritelistItem,
                                                  ParamType.DataStruct,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                        ),
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
