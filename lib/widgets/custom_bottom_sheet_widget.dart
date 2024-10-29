import 'package:flutter/material.dart';
import 'package:ladybug/src/constants.dart' as constants;

class CustomBottomSheetWidget extends StatefulWidget {

  final Widget child;
  const CustomBottomSheetWidget({
    super.key,
    required this.child
    });

  @override
  State<CustomBottomSheetWidget> createState() => _CustomBottomSheetWidgetState();
}

class _CustomBottomSheetWidgetState extends State<CustomBottomSheetWidget> {
  final sheet = GlobalKey();
  final controller = DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      return DraggableScrollableSheet(
          key: sheet,
          initialChildSize: 0.4,
          maxChildSize: 0.9,
          builder: (BuildContext context, ScrollController scrollController) {
            return DecoratedBox(
              decoration: const BoxDecoration(
                color: constants.whiteBackground,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0))),
              child: 
              CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverToBoxAdapter(
                    child: widget.child,
                  )
                ],
              ),
            );
          });
    });
  }
}
