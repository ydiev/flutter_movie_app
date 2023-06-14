import 'package:eden_movies_app/src/core/utils/localization.dart';
import 'package:flutter/material.dart';

NavigationBar appNavigationBar = NavigationBar(
  backgroundColor: Colors.black,
  onDestinationSelected: (int index) {
    // TODO(Diev): Navigate when the other pages are available
    throw UnimplementedError();
  },
  selectedIndex: 1,
  destinations: const [
    NavigationDestination(
      icon: Icon(Icons.bookmark_border),
      label: Localization.watchlistMenuItemText,
    ),
    NavigationDestination(
      icon: Icon(Icons.home),
      label: Localization.homeMenuItemText,
    ),
    NavigationDestination(
      selectedIcon: Icon(Icons.bookmark),
      icon: Icon(Icons.person_2_outlined),
      label: Localization.profileMenuItemText,
    ),
  ],
);
