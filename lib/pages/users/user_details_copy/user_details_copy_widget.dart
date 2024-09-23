import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'user_details_copy_model.dart';
export 'user_details_copy_model.dart';

class UserDetailsCopyWidget extends StatefulWidget {
  const UserDetailsCopyWidget({
    super.key,
    bool? showBack,
  }) : showBack = showBack ?? true;

  final bool showBack;

  @override
  State<UserDetailsCopyWidget> createState() => _UserDetailsCopyWidgetState();
}

class _UserDetailsCopyWidgetState extends State<UserDetailsCopyWidget> {
  late UserDetailsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserDetailsCopyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'user_detailsCopy'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
    );
  }
}
