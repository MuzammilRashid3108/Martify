import 'package:flutter/material.dart';
import 'package:martify/common/widgets/custom_shpaes/curved_edges.dart';

class CurvedEdgesStyle extends StatelessWidget {
  const CurvedEdgesStyle({
    super.key,
    this.child
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(

      clipper: CurvedEdges(),
      child: Container(
        child: child)
    );
  }
}