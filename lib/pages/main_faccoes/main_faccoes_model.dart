import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_faccoes_widget.dart' show MainFaccoesWidget;
import 'package:flutter/material.dart';

class MainFaccoesModel extends FlutterFlowModel<MainFaccoesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for web_nav component.
  late WebNavModel webNavModel;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
  }
}
