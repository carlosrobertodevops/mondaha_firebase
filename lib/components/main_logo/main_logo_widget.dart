import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'main_logo_model.dart';
export 'main_logo_model.dart';

class MainLogoWidget extends StatefulWidget {
  const MainLogoWidget({super.key});

  @override
  State<MainLogoWidget> createState() => _MainLogoWidgetState();
}

class _MainLogoWidgetState extends State<MainLogoWidget> {
  late MainLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainLogoModel());

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
            ? 'assets/images/mondaha-nobg.png'
            : 'assets/images/mondaha-nobg.png',
        width: 234.0,
        height: 170.0,
        fit: BoxFit.fitWidth,
        alignment: const Alignment(0.0, 0.0),
      ),
    );
  }
}
