import 'package:eden_movies_app/src/config/widgets/app_bar.dart';
import 'package:eden_movies_app/src/config/widgets/error_message_widget.dart';
import 'package:eden_movies_app/src/core/utils/localization.dart';
import 'package:eden_movies_app/src/dependency_register.dart';
import 'package:eden_movies_app/src/features/movies/presentation/movies_list/bloc/movies_list_cubit.dart';
import 'package:eden_movies_app/src/features/movies/presentation/movies_list/widgets/movie_collection_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesListScreen extends StatelessWidget {
  const MoviesListScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: appBar(context),
        // bottomNavigationBar: appNavigationBar(context),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: SafeArea(
            child: BlocProvider<MoviesListCubit>(
              create: (context) => getIt()..fetchMovies(),
              child: BlocBuilder<MoviesListCubit, MoviesListState>(
                builder: (context, state) => state.when(
                  initial: () => const SizedBox(),
                  loading: () => const CircularProgressIndicator(),
                  loaded: (movies, moviesByGenre) => ListView(
                    children: [
                      MovieCollectionWidget(
                        movies: movies,
                        isMain: true,
                      ),
                      ...moviesByGenre.entries.map(
                        (entry) => MovieCollectionWidget(
                          genre: entry.key,
                          movies: entry.value,
                        ),
                      ),
                    ],
                  ),
                  error: (error) => ErrorMessageWidget(
                    error.message ?? AppLocalization.defaultErrorMessage,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
