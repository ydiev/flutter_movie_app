import 'package:eden_movies_app/src/config/routing/app_router.dart';
import 'package:eden_movies_app/src/config/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late SequenceAnimation _sequenceAnimation;

  static const _sizeAnimationKey = 'size';
  static const _opacityAnimationKey = 'opacity';
  static const _itemsAnimationKey = 'items';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _sequenceAnimation = _getSequenceAnimation;

    _controller.addListener(() {
      if (_controller.status == AnimationStatus.completed) {
        context.goNamed(AppRoute.home.name);
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              final itemsCount =
                  _sequenceAnimation[_itemsAnimationKey].value.round();
              return Hero(
                tag: 'logo',
                child: Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: AppLogoWidget(
                    width: _sequenceAnimation[_sizeAnimationKey].value,
                    dotsOpacity: _sequenceAnimation[_opacityAnimationKey].value,
                    dotsCount: itemsCount,
                  ),
                ),
              );
            },
          ),
        ),
      );

  SequenceAnimation get _getSequenceAnimation => SequenceAnimationBuilder()
      .addAnimatable(
        animatable: Tween<double>(begin: 0, end: AppLogoWidget.stripWidth),
        from: const Duration(seconds: 0),
        to: const Duration(seconds: 1),
        tag: _sizeAnimationKey,
      )
      .addAnimatable(
        animatable: Tween<double>(begin: 0, end: 1),
        from: const Duration(seconds: 1),
        to: const Duration(seconds: 2),
        tag: _opacityAnimationKey,
      )
      .addAnimatable(
        animatable: Tween(
          begin: 50,
          end: 3,
        ),
        from: const Duration(seconds: 2),
        to: const Duration(seconds: 3),
        tag: _itemsAnimationKey,
      )
      .animate(_controller);
}
