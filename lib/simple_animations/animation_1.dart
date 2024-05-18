import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  const Animation1({super.key});

  @override
  State<Animation1> createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          switchInCurve: Curves.elasticOut,
          switchOutCurve: Curves.easeIn,
          reverseDuration: const Duration(milliseconds: 600),
          transitionBuilder: (c, ani) => ScaleTransition(alignment: Alignment.bottomCenter, scale: ani, child: c),
          child: !_isExpanded
              ? const SizedBox.shrink()
              : Column(
                  children: [
                    FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add_to_drive)),
                    const SizedBox(height: 12.0),
                    FloatingActionButton(onPressed: () {}, child: const Icon(Icons.photo_library_outlined)),
                    const SizedBox(height: 12.0),
                    FloatingActionButton(onPressed: () {}, child: const Icon(Icons.camera_alt_outlined)),
                    const SizedBox(height: 12.0),
                  ],
                ),
        ),
        FloatingActionButton(
          onPressed: () => setState(() => _isExpanded = !_isExpanded),
          child: AnimatedRotation(turns: _isExpanded ? 0.25 : 0.125, duration: const Duration(milliseconds: 200), child: const Icon(Icons.close)),
        )
      ],
    );
  }
}
