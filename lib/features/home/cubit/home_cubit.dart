import 'package:bloc/bloc.dart';
import 'package:flutter/gestures.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(
          const HomeState(
            isLoading: false,
            errorMessage: '',
          ),
        );

  Future<void> start() async {
      emit(
        const HomeState(
          isLoading: true,
          errorMessage: '',
        ),
      );

      emit(
        const HomeState(
          isLoading: false,
          errorMessage: '',
        ),
      );
  }
}
