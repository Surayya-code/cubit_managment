import 'package:bloc/bloc.dart';
import 'dart:math' as math show Random;

extension RandomElement<T> on Iterable<T> {
  T getRandomElemet() => elementAt(math.Random().nextInt(length));
}

class NamesCubit extends Cubit<String?> {
  NamesCubit( {required this.userList}) : super(null);

  final Iterable<String> userList;
  void getRandomName() => emit(userList.getRandomElemet());
}
