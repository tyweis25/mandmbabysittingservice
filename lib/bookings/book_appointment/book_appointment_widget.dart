import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/comoponts/appbar/appbar_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'book_appointment_model.dart';
export 'book_appointment_model.dart';

class BookAppointmentWidget extends StatefulWidget {
  const BookAppointmentWidget({super.key});

  static String routeName = 'BookAppointment';
  static String routePath = '/bookAppointment';

  @override
  State<BookAppointmentWidget> createState() => _BookAppointmentWidgetState();
}

class _BookAppointmentWidgetState extends State<BookAppointmentWidget> {
  late BookAppointmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookAppointmentModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.onLoadDay = await actions.getSelectedDay(
        _model.calendarSelectedDay!,
      );
      FFAppState().selectedDate = _model.onLoadDay;
      safeSetState(() {});
    });

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
                  title: 'Book an Appointment',
                ),
              ),
              Expanded(
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Text(
                        'Select date & time',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8.0,
                              color: FlutterFlowTheme.of(context).shadowColor,
                              offset: Offset(
                                0.0,
                                4.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: FlutterFlowCalendar(
                          color: FlutterFlowTheme.of(context).primary,
                          iconColor: FlutterFlowTheme.of(context).primary,
                          weekFormat: false,
                          weekStartsMonday: false,
                          initialDate: FFAppState().selectedDate,
                          rowHeight: 64.0,
                          onChange: (DateTimeRange? newSelectedDate) async {
                            if (_model.calendarSelectedDay == newSelectedDate) {
                              return;
                            }
                            _model.calendarSelectedDay = newSelectedDate;
                            _model.resultSelectDay =
                                await actions.getSelectedDay(
                              _model.calendarSelectedDay!,
                            );
                            FFAppState().selectedDate = _model.resultSelectDay;
                            safeSetState(() {});
                            _model.hasAvailChecked = false;
                            safeSetState(() {});
                            _model.noTimeSlots = false;
                            safeSetState(() {});
                            _model.showSelectAvail = false;
                            safeSetState(() {});
                            _model.showAvailList = false;
                            safeSetState(() {});
                            safeSetState(() {});
                          },
                          titleStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'SF Pro Display',
                                letterSpacing: 0.0,
                              ),
                          dayOfWeekStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                  ),
                          dateStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                  ),
                          selectedDateStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                  ),
                          inactiveDateStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                  ),
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: !_model.hasAvailChecked,
                      child: Container(
                        width: 400.0,
                        height: 75.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 12.0, 20.0, 23.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              _model.resultSlots =
                                  await actions.getAvailableSlots();
                              _model.availableSlots = _model.resultSlots!
                                  .toList()
                                  .cast<AvailableTimeslotsDataStruct>();
                              safeSetState(() {});
                              if (_model.resultSlots != null &&
                                  (_model.resultSlots)!.isNotEmpty) {
                                _model.showSelectAvail = true;
                                safeSetState(() {});
                                _model.noTimeSlots = false;
                                safeSetState(() {});
                                _model.showAvailList = true;
                                safeSetState(() {});
                              } else {
                                _model.noTimeSlots = true;
                                safeSetState(() {});
                                _model.showSelectAvail = false;
                                safeSetState(() {});
                                _model.showAvailList = false;
                                safeSetState(() {});
                              }

                              _model.hasAvailChecked = true;
                              safeSetState(() {});

                              safeSetState(() {});
                            },
                            text: 'Check Availibility for ${dateTimeFormat(
                              "yMd",
                              FFAppState().selectedDate,
                              locale: FFLocalizations.of(context).languageCode,
                            )}',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 28.9,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.2,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(44.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _model.showSelectAvail,
                      child: Text(
                        '${FFAppState().selectedBabysitter.name}\'s Availibility for ${dateTimeFormat(
                          "yMd",
                          FFAppState().selectedDate,
                          locale: FFLocalizations.of(context).languageCode,
                        )}',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Visibility(
                      visible: _model.showSelectAvail,
                      child: Text(
                        'Select an Available Timeslot',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Visibility(
                      visible: FFAppState().showAvailTimeslots,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'No Timeslots Available',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _model.showAvailList,
                      child: Builder(
                        builder: (context) {
                          final listSlots = _model.availableSlots.toList();

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listSlots.length,
                            itemBuilder: (context, listSlotsIndex) {
                              final listSlotsItem = listSlots[listSlotsIndex];
                              return Padding(
                                padding: EdgeInsets.all(4.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    _model.bookingStartTimes =
                                        await actions.getStartTimes(
                                      listSlotsItem.start!,
                                      listSlotsItem.end!,
                                    );
                                    _model.bookingEndTimes =
                                        await actions.getEndTimes(
                                      listSlotsItem.start!,
                                      listSlotsItem.end!,
                                      '',
                                    );

                                    context.pushNamed(
                                      BookingConfirmationWidget.routeName,
                                      queryParameters: {
                                        'bookingStartTimes': serializeParam(
                                          _model.bookingStartTimes,
                                          ParamType.String,
                                          isList: true,
                                        ),
                                        'bookingEndTimes': serializeParam(
                                          _model.bookingEndTimes,
                                          ParamType.String,
                                          isList: true,
                                        ),
                                        'bookingStartTime': serializeParam(
                                          listSlotsItem.start,
                                          ParamType.DateTime,
                                        ),
                                        'bookingEndTime': serializeParam(
                                          listSlotsItem.end,
                                          ParamType.DateTime,
                                        ),
                                      }.withoutNulls,
                                    );

                                    safeSetState(() {});
                                  },
                                  text: '${dateTimeFormat(
                                    "h:mm a",
                                    listSlotsItem.start,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )} - ${dateTimeFormat(
                                    "h:mm a",
                                    listSlotsItem.end,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )}',
                                  options: FFButtonOptions(
                                    width: 150.0,
                                    height: 30.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'SF Pro Display',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          lineHeight: 1.2,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(44.0),
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
    );
  }
}
