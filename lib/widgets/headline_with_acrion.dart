///reusable components

import 'package:flutter/material.dart';

class HeadlineWithAction extends StatelessWidget {
  const HeadlineWithAction({
    super.key,
    required this.tite,
    this.showAction = true,
    this.icon,
  });

  final String tite;
  final bool showAction;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tite,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        Visibility(
          visible: showAction,
          child: icon ?? const Icon(Icons.tune),
        )
      ],
    );
  }
}
