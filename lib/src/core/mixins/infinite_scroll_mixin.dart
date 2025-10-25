import 'package:flutter/material.dart';
import 'package:sokrio_users/src/core/core.dart';

/// InfiniteScrollMixin
///
/// A reusable mixin to add **infinite scroll** to any `StatefulWidget`.
/// It provides a `ScrollController` and automatically detects when the user
/// scrolls to the bottom. When the bottom is reached, it calls a callback
/// function you provide.
///
/// Usage:
/// 1. Add the mixin to your State class:
///    `class MyPageState extends State<MyPage> with InfiniteScrollMixin { ... }`
/// 2. Initialize it in `initState()`:
///    `initInfiniteScroll(_loadMoreItems);`
/// 3. Attach `scrollController` to your scrollable widget (ListView, GridView, etc.).
///
/// The mixin automatically disposes the controller when the state is removed.
mixin InfiniteScrollMixin<T extends StatefulWidget> on State<T> {
  final ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @mustCallSuper
  void initInfiniteScroll(VoidCallback onReachedBottom) {
    scrollController.addListener(() {
      if (_isAtBottom) {
        Log.debug('Reach to bottom');
        onReachedBottom();
      }
    });
  }

  bool get _isAtBottom {
    final position = scrollController.position;
    return position.pixels >= position.maxScrollExtent &&
        !position.outOfRange;
  }
}
