import 'package:bookly_app/core/utils/service_locater.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repositories/home_repo_imple.dart';
import 'package:bookly_app/features/Home/presentation/manger/similars_books/similar_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/home_veiw.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/book_detailes_view.dart';
import 'package:bookly_app/features/Search/data/repositories/search_repo_imple.dart';
import 'package:bookly_app/features/Search/presentaion/manger/search_books/search_cubit.dart';
import 'package:bookly_app/features/Search/presentaion/view/search_view.dart';
import 'package:bookly_app/features/Splash_veiw/presentation/splash_veiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kDetailsView = '/detailsView';
  static const kSearchView = '/searchView';

  // static const kHomeVieww='/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(
            getIt.get<SearchRepoImpl>()
          ),
          child: SearchView(bookModel: state.extra as BookModel,),
        ),
      ),
      GoRoute(
        path: '/detailsView',
        builder: (context, state) => BlocProvider(
            create: (BuildContext context) {
              return SimilarBooksCubit(getIt.get<HomeRepoImpl>());
            },
            child: BookDetailsView(
              bookModel: state.extra as BookModel,
            )),
      ),
    ],
  );
}
