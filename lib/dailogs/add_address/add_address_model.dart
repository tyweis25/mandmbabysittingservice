import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_address_widget.dart' show AddAddressWidget;
import 'package:flutter/material.dart';

class AddAddressModel extends FlutterFlowModel<AddAddressWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for StreetNumber widget.
  FocusNode? streetNumberFocusNode;
  TextEditingController? streetNumberTextController;
  String? Function(BuildContext, String?)? streetNumberTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in StreetNumber widget.
  AddressesRecord? addrDocId;
  // State field(s) for StreetName widget.
  FocusNode? streetNameFocusNode;
  TextEditingController? streetNameTextController;
  String? Function(BuildContext, String?)? streetNameTextControllerValidator;
  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for State widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for Zipcode widget.
  FocusNode? zipcodeFocusNode;
  TextEditingController? zipcodeTextController;
  String? Function(BuildContext, String?)? zipcodeTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in AddAddress widget.
  AddressesRecord? addrDocRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    streetNumberFocusNode?.dispose();
    streetNumberTextController?.dispose();

    streetNameFocusNode?.dispose();
    streetNameTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    zipcodeFocusNode?.dispose();
    zipcodeTextController?.dispose();
  }
}
