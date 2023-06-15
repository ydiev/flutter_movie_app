import 'package:eden_movies_app/src/config/routing/app_router.dart';
import 'package:eden_movies_app/src/config/theme/app_colors.dart';
import 'package:eden_movies_app/src/core/utils/localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// TODO(Diev): Can be used for profile and watch list screens
NavigationBar appNavigationBar(BuildContext context) => NavigationBar(
      backgroundColor: AppColors.appBarBackground,
      onDestinationSelected: (int index) {
        context.goNamed(AppRoute.home.name);
      },
      selectedIndex: 1,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.bookmark_border),
          label: AppLocalization.watchlistMenuItemText,
        ),
        NavigationDestination(
          icon: Icon(Icons.home),
          label: AppLocalization.homeMenuItemText,
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.bookmark),
          icon: Icon(Icons.person_2_outlined),
          label: AppLocalization.profileMenuItemText,
        ),
      ],
    );
