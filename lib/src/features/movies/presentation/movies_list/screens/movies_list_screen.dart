import 'package:eden_movies_app/src/core/utils/localization.dart';
import 'package:eden_movies_app/src/dependency_register.dart';
import 'package:eden_movies_app/src/features/movies/presentation/movies_list/bloc/movies_list_cubit.dart';
import 'package:eden_movies_app/src/features/movies/presentation/movies_list/widgets/carousel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesListScreen extends StatelessWidget {
  const MoviesListScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: NavigationBar(
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
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: SafeArea(
            child: BlocProvider<MoviesListCubit>(
              create: (context) => getIt()..fetchMovies(),
              child: BlocBuilder<MoviesListCubit, MoviesListState>(
                builder: (context, state) => state.when(
                  initial: () => const SizedBox(),
                  loading: () => const CircularProgressIndicator(),
                  loaded: (movies) => ListView(
                    children: [
                      CarouselWidget(movies: movies),
                      // CarouselWidget(
                      //   // TODO(Diev): Replace with dynamic data
                      //   title: 'Crime',
                      //   size: CarouselSize.small,
                      // ),
                      // CarouselWidget(
                      //   // TODO(Diev): Replace with dynamic data
                      //   title: 'Drama',
                      //   size: CarouselSize.small,
                      // ),
                    ],
                  ),
                  error: (error) => Center(
                    // TODO(Diev): Improve
                    child: Text(error.message ?? 'Default error'),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
