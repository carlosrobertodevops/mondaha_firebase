import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_membros_widget.dart' show SearchMembrosWidget;
import 'package:flutter/material.dart';

class SearchMembrosModel extends FlutterFlowModel<SearchMembrosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<MembrosRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
