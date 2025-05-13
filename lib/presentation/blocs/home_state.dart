import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class HomeState extends Equatable {

  final GlobalKey<FormState>? formkey;
  final String title ;
  final String path ;

  const HomeState({
    this.title = '',
    this.path = '',
    this.formkey 
  });

  HomeState copyWith({
   GlobalKey<FormState>? formkey,
   String? title ,
   String? path ,
  }){
    return HomeState(
      path: path ?? this.path,
      title: title ?? this.title,
      formkey: formkey,
    );
  }

  @override
  List<Object?> get props => [title, path];
}
