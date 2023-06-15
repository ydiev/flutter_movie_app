import 'package:eden_movies_app/src/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
    this.width = stripWidth,
    this.dotsOpacity = 0.5,
    this.dotsCount = 3,
  });

  static const double stripWidth = 60;
  static const double _dotSquareSize = 6;

  final double width;
  final double dotsOpacity;
  final int dotsCount;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: width,
              height: dotsCount * (_dotSquareSize * 2) + _dotSquareSize,
              color: AppColors.accentColor,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: width > _dotSquareSize ? (width - _dotSquareSize) : width,
              child: Opacity(
                opacity: dotsOpacity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _MovieStripDot(
                      dotsCount: dotsCount,
                      squareSize: _dotSquareSize,
                    ),
                    _MovieStripDot(
                      dotsCount: dotsCount,
                      squareSize: _dotSquareSize,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}

class _MovieStripDot extends StatelessWidget {
  const _MovieStripDot({
    required this.dotsCount,
    required this.squareSize,
  });

  final int dotsCount;
  final double squareSize;

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          for (var i = 0; i < dotsCount; i++)
            Container(
              margin: EdgeInsets.only(
                top: squareSize,
              ),
              height: squareSize,
              width: squareSize,
              color: AppColors.appBarBackground,
            )
        ],
      );
}
