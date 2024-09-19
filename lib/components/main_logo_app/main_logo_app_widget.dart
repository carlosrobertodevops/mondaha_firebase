import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'main_logo_app_model.dart';
export 'main_logo_app_model.dart';

class MainLogoAppWidget extends StatefulWidget {
  const MainLogoAppWidget({super.key});

  @override
  State<MainLogoAppWidget> createState() => _MainLogoAppWidgetState();
}

class _MainLogoAppWidgetState extends State<MainLogoAppWidget> {
  late MainLogoAppModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainLogoAppModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Image.asset(
        Theme.of(context).brightness == Brightness.dark
            ? 'assets/images/chegii-sspal.png'
            : 'assets/images/mondaha-nobg.png',
        width: 260.0,
        height: 190.0,
        fit: BoxFit.fitWidth,
        alignment: const Alignment(0.0, 0.0),
      ),
    );
  }
}
