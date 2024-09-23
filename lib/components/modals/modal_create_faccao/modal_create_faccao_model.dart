import '/flutter_flow/flutter_flow_util.dart';
import 'modal_create_faccao_widget.dart' show ModalCreateFaccaoWidget;
import 'package:flutter/material.dart';

class ModalCreateFaccaoModel extends FlutterFlowModel<ModalCreateFaccaoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for faccaoName widget.
  FocusNode? faccaoNameFocusNode;
  TextEditingController? faccaoNameTextController;
  String? Function(BuildContext, String?)? faccaoNameTextControllerValidator;
  String? _faccaoNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gxl81j2c' /* Please enter a project name... */,
      );
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '94ydbmto' /* Please enter a short descripti... */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    faccaoNameTextControllerValidator = _faccaoNameTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
  }

  @override
  void dispose() {
    faccaoNameFocusNode?.dispose();
    faccaoNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
