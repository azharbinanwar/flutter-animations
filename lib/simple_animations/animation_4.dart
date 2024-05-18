import 'package:flutter/material.dart';

class Animation4 extends StatefulWidget {
  const Animation4({super.key});

  @override
  State<Animation4> createState() => _Animation4State();
}

class _Animation4State extends State<Animation4> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          curve: Curves.easeIn,
          right: _isExpanded ? 16 : 16,
          bottom: _isExpanded ? 56 + 16 * 2 : 16,
          duration: const Duration(milliseconds: 200),
          child: AnimatedOpacity(
            opacity: _isExpanded ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            child: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.camera_alt_outlined)),
          ),
        ),
        AnimatedPositioned(
          curve: Curves.easeIn,
          right: _isExpanded ? 16 * 2 + 56 : 16.0,
          bottom: _isExpanded ? 56 + 16 * 2 : 16,
          duration: const Duration(milliseconds: 400),
          child: AnimatedOpacity(
            opacity: _isExpanded ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.photo_library_outlined),
            ),
          ),
        ),
        AnimatedPositioned(
          curve: Curves.easeIn,
          right: _isExpanded ? 56 + 16 * 2 : 16.0,
          bottom: 16.0,
          duration: const Duration(milliseconds: 600),
          child: AnimatedOpacity(
            opacity: _isExpanded ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 700),
            child: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add_to_drive)),
          ),
        ),
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: FloatingActionButton(
            onPressed: () => setState(() => _isExpanded = !_isExpanded),
            child: AnimatedRotation(turns: _isExpanded ? 0.25 : 0.125, duration: const Duration(milliseconds: 200), child: const Icon(Icons.close)),
          ),
        ),
      ],
    );
  }
}
