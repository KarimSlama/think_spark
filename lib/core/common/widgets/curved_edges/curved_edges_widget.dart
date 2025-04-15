import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/curved_edges/curved_edges.dart';

class CurvedEdgeWidget extends StatelessWidget {
  final Widget child;
  const CurvedEdgeWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SparkCustomCurvedEdges(),
      child: child,
    );
  }
}