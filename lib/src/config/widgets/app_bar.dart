import 'package:eden_movies_app/src/config/theme/app_colors.dart';
import 'package:eden_movies_app/src/config/widgets/app_logo_widget.dart';
import 'package:eden_movies_app/src/core/utils/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

AppBar appBar(BuildContext context) => AppBar(
      title: const Hero(
        tag: 'logo',
        child: AppLogoWidget(),
      ),
    );

AppBar detailsScreenAppBar(BuildContext context) => AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.textLighterColor,
      leading:
          context.canPop() ? _backButton(onTap: () => context.pop()) : null,
    );

Widget _backButton({required GestureTapCallback onTap}) => GestureDetector(
      onTap: onTap,
      child: const Padding(
        padding: EdgeInsets.only(left: AppSpacing.spacing12),
        child: Icon(
          Icons.arrow_back_ios,
        ),
      ),
    );
