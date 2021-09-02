part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

// ketika sukses melakukan autentikasi
class AuthSuccess extends AuthState {
  final UserModel user;

  AuthSuccess(this.user);

  @override
  List<Object> get props => [user];
}

// ketika terdapat kesalahan dalam autentikasi
class AuthFailed extends AuthState {
  // pesan error nya
  final String error;

  AuthFailed(this.error);

  @override
  List<Object> get props => [error];
}
