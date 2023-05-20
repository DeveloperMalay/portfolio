import 'dart:async';

import 'package:flutter/material.dart';

class AutoFadeTransitionExample extends StatefulWidget {
  @override
  _AutoFadeTransitionExampleState createState() =>
      _AutoFadeTransitionExampleState();
}

class _AutoFadeTransitionExampleState extends State<AutoFadeTransitionExample>
    with SingleTickerProviderStateMixin {
  bool _isFirstWidgetVisible = true;
  late AnimationController _animationController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _timer = Timer.periodic(Duration(seconds: 3), (_) {
      setState(() {
        _isFirstWidgetVisible = !_isFirstWidgetVisible;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: AnimatedSwitcher(
          duration: _animationController.duration!,
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: _isFirstWidgetVisible ? _buildFirstWidget() : _buildSecondWidget(),
        ),
      );
  }

  Widget _buildFirstWidget() {
    return Container(
      key: ValueKey(1),
      width: 200,
      height: 200,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Widget 1',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }

  Widget _buildSecondWidget() {
    return Container(
      key: ValueKey(2),
      width: 200,
      height: 200,
      color: Colors.red,
      child: Center(
        child: Text(
          'Widget 2',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}