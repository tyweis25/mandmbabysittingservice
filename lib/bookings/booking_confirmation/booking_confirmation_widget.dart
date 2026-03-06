import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/comoponts/appbar/appbar_widget.dart';
import '/components/child_checkbox_list_component_widget.dart';
import '/dailogs/add_address/add_address_widget.dart';
import '/dailogs/add_child/add_child_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'booking_confirmation_model.dart';
export 'booking_confirmation_model.dart';

class BookingConfirmationWidget extends StatefulWidget {
  const BookingConfirmationWidget({
    super.key,
    required this.bookingStartTimes,
    required this.bookingEndTimes,
    required this.bookingStartTime,
    required this.bookingEndTime,
  });

  final List<String>? bookingStartTimes;
  final List<String>? bookingEndTimes;
  final DateTime? bookingStartTime;
  final DateTime? bookingEndTime;

  static String routeName = 'BookingConfirmation';
  static String routePath = '/bookingConfirmation';

  @override
  State<BookingConfirmationWidget> createState() =>
      _BookingConfirmationWidgetState();
}

class _BookingConfirmationWidgetState extends State<BookingConfirmationWidget> {
  late BookingConfirmationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingConfirmationModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.endTimeList = widget.bookingEndTimes!.toList().cast<String>();
      safeSetState(() {});
      _model.totalNumHours = 1.0;
      safeSetState(() {});
      if (FFAppState().selectChildrenCheckbox.isNotEmpty) {
        _model.childrenCheckboxError = false;
        safeSetState(() {});
      } else {
        _model.childList = await actions.getChildCheckboxList();
        if (_model.childList != null && (_model.childList)!.isNotEmpty) {
          FFAppState().selectChildrenCheckbox =
              _model.childList!.toList().cast<String>();
          safeSetState(() {});
          _model.childrenCheckboxError = false;
          safeSetState(() {});
        } else {
          _model.childrenCheckboxError = true;
          safeSetState(() {});
        }
      }
    });

    _model.parentNotesTextController ??= TextEditingController();
    _model.parentNotesFocusNode ??= FocusNode();

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.appbarModel,
                updateCallback: () => safeSetState(() {}),
                child: AppbarWidget(
                  title: 'Confirm Booking',
                ),
              ),
              Expanded(
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Booking Date: ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            dateTimeFormat(
                              "yMMMd",
                              FFAppState().selectedDate,
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  lineHeight: 1.5,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Text(
                              'Babysitter:',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Amelia',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Text(
                              'Parent Information:',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              '${valueOrDefault(currentUserDocument?.firstName, '')} ${valueOrDefault(currentUserDocument?.lastName, '')}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          if (FFAppState().isParentAddress) {
                            return ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Text(
                                    '${FFAppState().parentAddress.streetNumber} ${FFAppState().parentAddress.streetName}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro Display',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Text(
                                    '${FFAppState().parentAddress.city}, ${FFAppState().parentAddress.state} ${FFAppState().parentAddress.zipcode}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro Display',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: Text(
                                        'Edit Address',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          } else {
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Builder(
                                  builder: (context) => InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(dialogContext)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: AddAddressWidget(),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Text(
                                      'Add Address',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                        },
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Text(
                              'Start/End Time:',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Form(
                      key: _model.formKey1,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 12.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: FlutterFlowDropDown<String>(
                                controller: _model.startTimeValueController ??=
                                    FormFieldController<String>(
                                  _model.startTimeValue ??=
                                      widget.bookingStartTimes?.firstOrNull,
                                ),
                                options: widget.bookingStartTimes!,
                                onChanged: (val) async {
                                  safeSetState(
                                      () => _model.startTimeValue = val);
                                  _model.resultEndTimes =
                                      await actions.getEndTimes(
                                    widget.bookingStartTime!,
                                    widget.bookingEndTime!,
                                    _model.startTimeValue,
                                  );
                                  _model.endTimeList = _model.resultEndTimes!
                                      .toList()
                                      .cast<String>();
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.endTimeValueController?.reset();
                                    _model.endTimeValue = null;
                                  });

                                  safeSetState(() {});
                                },
                                width: 186.0,
                                height: 50.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro Display',
                                      color: FlutterFlowTheme.of(context)
                                          .regularColor,
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                    ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).grey20,
                                borderWidth: 1.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                            Expanded(
                              child: FlutterFlowDropDown<String>(
                                controller: _model.endTimeValueController ??=
                                    FormFieldController<String>(null),
                                options: _model.endTimeList,
                                onChanged: (val) async {
                                  safeSetState(() => _model.endTimeValue = val);
                                  _model.outpuHrs = await actions.getNumHours(
                                    _model.startTimeValue!,
                                    _model.endTimeValue!,
                                  );
                                  _model.totalNumHours = _model.outpuHrs;
                                  safeSetState(() {});
                                  _model.outputTotal =
                                      await actions.getTotalPrice(
                                    _model.totalNumHours!,
                                    _model.totalNumChildren!,
                                    FFAppState().ratePerHour.toDouble(),
                                  );
                                  _model.totalBookingPrice = _model.outputTotal;
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                width: 186.0,
                                height: 50.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro Display',
                                      color: FlutterFlowTheme.of(context)
                                          .regularColor,
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                    ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).grey20,
                                borderWidth: 1.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Text(
                              'Children',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Form(
                      key: _model.formKey3,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Builder(
                        builder: (context) {
                          if (FFAppState().hasChildren) {
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.childCheckboxListComponentModel,
                                updateCallback: () => safeSetState(() {}),
                                updateOnChange: true,
                                child: ChildCheckboxListComponentWidget(
                                  childList: FFAppState().children,
                                  onSelectChild: () async {},
                                ),
                              ),
                            );
                          } else {
                            return Text(
                              'Please Add Child',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color: FlutterFlowTheme.of(context).error,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            );
                          }
                        },
                      ),
                    ),
                    Visibility(
                      visible: _model.isChildSelectedError,
                      child: Text(
                        'Please Select atleast 1 Child',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              color: FlutterFlowTheme.of(context).error,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Builder(
                      builder: (context) => Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: GestureDetector(
                                    onTap: () {
                                      FocusScope.of(dialogContext).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: AddChildWidget(
                                      onAddChild:
                                          (childrenCheckboxError) async {
                                        _model.childrenCheckboxError = false;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            'Add Child',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Form(
                      key: _model.formKey2,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Container(
                              width: 350.0,
                              child: TextFormField(
                                controller: _model.parentNotesTextController,
                                focusNode: _model.parentNotesFocusNode,
                                autofocus: false,
                                enabled: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Parent Notes',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Parent Notes',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'SF Pro Display',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro Display',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                                maxLines: 3,
                                maxLength: 100,
                                maxLengthEnforcement:
                                    MaxLengthEnforcement.enforced,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                enableInteractiveSelection: true,
                                validator: _model
                                    .parentNotesTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Text(
                          'Total:  ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.5,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        _model.totalNumHours.toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        '(hrs)',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        '  ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        'x',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        '  ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        '\$',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        FFAppState().ratePerHour.toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        '/hr',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        '  ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        '=',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        '  ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        '\$',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        _model.totalBookingPrice.toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 24.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.bookingId = await actions.generateRandomString(
                      8,
                    );
                    _model.numChildren = await actions.getNumSelectedChildren(
                      _model.childCheckboxListComponentModel
                          .childCheckboxListComponentValues!
                          .toList(),
                    );
                    _model.numHours = await actions.getNumHours(
                      _model.startTimeValue!,
                      _model.endTimeValue!,
                    );
                    _model.totalPrice = await actions.getTotalPrice(
                      _model.totalNumHours!,
                      _model.numChildren!,
                      FFAppState().ratePerHour.toDouble(),
                    );
                    _model.startDt = await actions.getStartTime(
                      _model.startTimeValue!,
                    );
                    _model.endDt = await actions.getEndTime(
                      _model.endTimeValue!,
                    );

                    var bookingsRecordReference =
                        BookingsRecord.collection.doc();
                    await bookingsRecordReference.set({
                      ...createBookingsRecordData(
                        bookingId: _model.bookingId,
                        ratePerHour: FFAppState().ratePerHour.toDouble(),
                        numOfChildren: _model.numChildren,
                        startTime: _model.startDt,
                        endTime: _model.endDt,
                        createdTime: getCurrentTimestamp,
                        dateOfService: FFAppState().selectedDate,
                        parentNotes: _model.parentNotesTextController.text,
                        totalPrice: _model.totalPrice,
                        status: Status.Pending,
                        typeOfService: 'Babysitting Service with Amelia',
                        parentId: currentUserUid,
                        babysitterNotes: _model.parentNotesTextController.text,
                        numOfHours: _model.numHours,
                        babysitterId: 'UAW34EubpMTccFPh9jXNRhGTo9V2',
                      ),
                      ...mapToFirestore(
                        {
                          'children': _model.childCheckboxListComponentModel
                              .childCheckboxListComponentValues,
                        },
                      ),
                    });
                    _model.bookingRef = BookingsRecord.getDocumentFromData({
                      ...createBookingsRecordData(
                        bookingId: _model.bookingId,
                        ratePerHour: FFAppState().ratePerHour.toDouble(),
                        numOfChildren: _model.numChildren,
                        startTime: _model.startDt,
                        endTime: _model.endDt,
                        createdTime: getCurrentTimestamp,
                        dateOfService: FFAppState().selectedDate,
                        parentNotes: _model.parentNotesTextController.text,
                        totalPrice: _model.totalPrice,
                        status: Status.Pending,
                        typeOfService: 'Babysitting Service with Amelia',
                        parentId: currentUserUid,
                        babysitterNotes: _model.parentNotesTextController.text,
                        numOfHours: _model.numHours,
                        babysitterId: 'UAW34EubpMTccFPh9jXNRhGTo9V2',
                      ),
                      ...mapToFirestore(
                        {
                          'children': _model.childCheckboxListComponentModel
                              .childCheckboxListComponentValues,
                        },
                      ),
                    }, bookingsRecordReference);

                    safeSetState(() {});
                  },
                  text: 'Confirm Booking',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 56.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'SF Pro Display',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
            ],
          ),
        ),
      ),
    );
  }
}
