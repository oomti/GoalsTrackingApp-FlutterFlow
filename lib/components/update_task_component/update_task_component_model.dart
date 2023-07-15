import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateTaskComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TaskTitle widget.
  TextEditingController? taskTitleController;
  String? Function(BuildContext, String?)? taskTitleControllerValidator;
  String? _taskTitleControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TaskDescription widget.
  TextEditingController? taskDescriptionController;
  String? Function(BuildContext, String?)? taskDescriptionControllerValidator;
  String? _taskDescriptionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    taskTitleControllerValidator = _taskTitleControllerValidator;
    taskDescriptionControllerValidator = _taskDescriptionControllerValidator;
  }

  void dispose() {
    taskTitleController?.dispose();
    taskDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
