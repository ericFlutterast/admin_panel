import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class HelperSelector extends StatefulWidget {
  const HelperSelector({
    required this.child,
    required this.droppedChild,
    this.droppedChildConstraints,
    super.key,
  });

  final Widget child;
  final Widget droppedChild;
  final BoxConstraints? droppedChildConstraints;

  static HelperSelectorState? of(BuildContext context) {
    return context.findAncestorStateOfType();
  }

  @override
  State<HelperSelector> createState() => HelperSelectorState();
}

class HelperSelectorState = State<HelperSelector>
    with _HelperSelectorApiMixin, _HelperSelectorBuilderMixin, _HelperSelectorOverlayMixin;

mixin _HelperSelectorApiMixin on State<HelperSelector> {
  @mustCallSuper
  @visibleForTesting
  @visibleForOverriding
  void show();

  @mustCallSuper
  @visibleForTesting
  @visibleForOverriding
  void hide();
}

mixin _HelperSelectorBuilderMixin on _HelperSelectorApiMixin {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => _isPressed
            ? {
                hide.call(),
                setState(() => _isPressed = false),
              }
            : {
                show.call(),
                setState(() => _isPressed = true),
              },
        child: widget.child,
      ),
    );
  }
}

mixin _HelperSelectorOverlayMixin on _HelperSelectorApiMixin {
  /// Object connecting [CompositedTransformTarget]
  /// and [CompositedTransformFollower].
  final LayerLink _layerLink = LayerLink();

  /// Current overlay entry, if it exists.
  OverlayEntry? _overlayEntry;

  @override
  void show() {
    hide();

    //Show overlay and set new _overlayEntry
    Overlay.of(context)?.insert(
      _overlayEntry = OverlayEntry(
        builder: (context) {
          return Positioned(
            height: widget.droppedChildConstraints?.maxHeight ?? 150,
            width: widget.droppedChildConstraints?.maxWidth ?? 150,
            child: CompositedTransformFollower(
              link: _layerLink,
              offset: const Offset(20, 0),
              targetAnchor: Alignment.topRight,
              followerAnchor: Alignment.centerLeft,
              showWhenUnlinked: false,
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  widget.droppedChild,
                  Positioned(
                    top: -20,
                    right: -20,
                    child: IconButton(
                      onPressed: hide,
                      icon: const Icon(Icons.cancel_outlined),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void hide() {
    if (_overlayEntry == null) return;
    // Remove current overlay entry if it exists.
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  void dispose() {
    hide();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>

      /// Wrap your widget inside [CompositedTransformTarget]
      /// for tracking capabilities
      CompositedTransformTarget(
        link: _layerLink,
        child: super.build(context),
      );
}
