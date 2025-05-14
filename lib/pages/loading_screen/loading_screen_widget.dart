import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'loading_screen_model.dart';
export 'loading_screen_model.dart';

/// loading screen, temporary router
class LoadingScreenWidget extends StatefulWidget {
  const LoadingScreenWidget({super.key});

  static String routeName = 'LoadingScreen';
  static String routePath = '/loadingScreen';

  @override
  State<LoadingScreenWidget> createState() => _LoadingScreenWidgetState();
}

class _LoadingScreenWidgetState extends State<LoadingScreenWidget> {
  late LoadingScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.userDetails = await GetuserinfofromIDAPICall.call(
        userId: currentUserUid,
      );

      if ((_model.userDetails?.succeeded ?? true)) {
        FFAppState().updateUserDetailsStruct(
          (e) => e
            ..firstName = getJsonField(
              (_model.userDetails?.jsonBody ?? ''),
              r'''$[0].firstname''',
            ).toString().toString()
            ..lastName = getJsonField(
              (_model.userDetails?.jsonBody ?? ''),
              r'''$[0].last_name''',
            ).toString().toString()
            ..email = getJsonField(
              (_model.userDetails?.jsonBody ?? ''),
              r'''$[0].email''',
            ).toString().toString()
            ..role = getJsonField(
              (_model.userDetails?.jsonBody ?? ''),
              r'''$[0].role''',
            ).toString().toString(),
        );
        safeSetState(() {});

        context.pushNamed(DashboardWidget.routeName);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
