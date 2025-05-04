import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/curved_edges/primary_curved_edges.dart';

class PrimaryCurvedEdgeWidget extends StatelessWidget {
  final Widget child;
  const PrimaryCurvedEdgeWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: PrimaryCustomCurvedEdges(),
      child: child,
    );
  }
}