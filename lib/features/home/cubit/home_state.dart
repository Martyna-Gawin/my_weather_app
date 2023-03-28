part of 'home_cubit.dart';

class HomeState {
  const HomeState({
    required this.isLoading,
    required this.errorMessage,
  });

  final bool isLoading;
  final String errorMessage;
}
