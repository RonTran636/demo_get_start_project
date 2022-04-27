import 'package:flutter/material.dart';

import '../resources/colors.dart';

class OverlayWidget {
  bool menuOpen = false;
  bool noMaterial = false;
  Color backgroundColor;
  Widget? overlayWidget;
  late OverlayEntry? _overlayEntry;
  late OverlayEntry? _overlayBackground;
  final BuildContext context;
  final Key? key;

  OverlayWidget(
    this.context, {
    this.overlayWidget,
    this.backgroundColor = AppColor.black45,
    this.noMaterial = false,
    this.key,
  }) {
    _overlayEntry = OverlayEntry(
      builder: (_) {
        if (noMaterial) return overlayWidget ?? const SizedBox.shrink();
        return Center(
          child: Material(
            key: key,
            color: AppColor.transparent,
            child: overlayWidget ?? const SizedBox.shrink(),
          ),
        );
      },
    );

    _overlayBackground = OverlayEntry(
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: Container(color: backgroundColor),
        );
      },
    );
  }

  // Display Methods
  void show() {
    if (menuOpen) {
      close();
    } else {
      if (_overlayBackground != null) {
        Overlay.of(context)?.insert(_overlayBackground!);
      }
      if (_overlayEntry != null) {
        Overlay.of(context)?.insert(_overlayEntry!);
      }
    }
  }

  void close() {
    try {
      if (_overlayEntry?.mounted ?? false) {
        _overlayEntry?.remove();
      }
      if (_overlayBackground?.mounted ?? false) {
        _overlayBackground?.remove();
      }
      menuOpen = false;
    } catch (_) {
      menuOpen = false;
    }
  }
}
