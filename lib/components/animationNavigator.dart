import 'package:animations/animations.dart';
import 'package:flutter/material.dart';


class _OpenContainerWrapper extends StatelessWidget {
  const _OpenContainerWrapper({
    required this.closedBuilder,
    required this.transitionType,
    required this.openBuilder,
  });

  final CloseContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;
  final Widget openBuilder;

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
      transitionType: transitionType,
      openBuilder: (context, openContainer) => openBuilder,
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}
