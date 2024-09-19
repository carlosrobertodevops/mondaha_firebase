import '/components/main_logo/main_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_message_widget.dart' show ModalMessageWidget;
import 'package:flutter/material.dart';

class ModalMessageModel extends FlutterFlowModel<ModalMessageWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for main_Logo component.
  late MainLogoModel mainLogoModel;

  @override
  void initState(BuildContext context) {
    mainLogoModel = createModel(context, () => MainLogoModel());
  }

  @override
  void dispose() {
    mainLogoModel.dispose();
  }
}
