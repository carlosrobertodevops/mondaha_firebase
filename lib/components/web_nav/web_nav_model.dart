import '/components/main_logo/main_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'web_nav_widget.dart' show WebNavWidget;
import 'package:flutter/material.dart';

class WebNavModel extends FlutterFlowModel<WebNavWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for main_Logo_A.
  late MainLogoModel mainLogoAModel;

  @override
  void initState(BuildContext context) {
    mainLogoAModel = createModel(context, () => MainLogoModel());
  }

  @override
  void dispose() {
    mainLogoAModel.dispose();
  }
}
