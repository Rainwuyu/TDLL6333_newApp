import '/components/back_widget.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'parent_task_widget.dart' show ParentTaskWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class ParentTaskModel extends FlutterFlowModel<ParentTaskWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for back component.
  late BackModel backModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for SwipeableStack widget.
  late SwipeableCardSectionController swipeableStackController1;
  // State field(s) for SwipeableStack widget.
  late SwipeableCardSectionController swipeableStackController2;
  // State field(s) for SwipeableStack widget.
  late SwipeableCardSectionController swipeableStackController3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backModel = createModel(context, () => BackModel());
    swipeableStackController1 = SwipeableCardSectionController();
    swipeableStackController2 = SwipeableCardSectionController();
    swipeableStackController3 = SwipeableCardSectionController();
  }

  void dispose() {
    unfocusNode.dispose();
    backModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
