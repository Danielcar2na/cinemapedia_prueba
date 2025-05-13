import 'package:cinemapedia/presentation/blocs/home_bloc.dart';
import 'package:cinemapedia/presentation/screens/home_screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


final appBlocProviders = [
  BlocProvider(create: (_) => HomeBloc()),
];
