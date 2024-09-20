import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_membros_list_all_widget.dart' show MainMembrosListAllWidget;
import 'package:flutter/material.dart';

class MainMembrosListAllModel
    extends FlutterFlowModel<MainMembrosListAllWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for web_nav component.
  late WebNavModel webNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
    tabBarController?.dispose();
  }
}
