import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'shifts_model.dart';
export 'shifts_model.dart';

class ShiftsWidget extends StatefulWidget {
  const ShiftsWidget({super.key});

  static String routeName = 'Shifts';
  static String routePath = '/shifts';

  @override
  State<ShiftsWidget> createState() => _ShiftsWidgetState();
}

class _ShiftsWidgetState extends State<ShiftsWidget> {
  late ShiftsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShiftsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
              wrapWithModel(
                model: _model.navBarModel,
                updateCallback: () => safeSetState(() {}),
                child: NavBarWidget(
                  selectedPageIndex: 2,
                  hidden: false,
                  ontabposBtn: () async {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
