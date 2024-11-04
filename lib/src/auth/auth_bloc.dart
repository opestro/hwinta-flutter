import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:flutter/material.dart';

import 'package:feeef_marchant/feeef/auth/models/user_auth_response.dart';
import 'package:feeef_marchant/feeef/users/models/user.dart';
import 'package:feeef_marchant/main.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
// refreshListenable
  static final currentUser = ValueNotifier<User?>(null);

  StreamSubscription? _authSubscription;

  AuthBloc() : super(AuthInitial()) {
    if (ff.users.auth != null) {
      emit(AuthState(auth: ff.users.auth));
    }
    _authSubscription = ff.users.authStream.listen((auth) {
      // ignore: invalid_use_of_visible_for_testing_member
      emit(AuthState(auth: auth));
    });

    on<AuthSignin>(_signin);
    on<AuthSignup>(_signup);
    on<AuthSignout>(_signout);
    on<AuthResetPassword>(_resetPassword);
    on<AuthCheck>(_check);
    on<AuthClear>(_clear);
  }

  // init
  @override
  FutureOr<void> _clear(event, emit) async {
    emit(AuthInitial());
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();
    return super.close();
  }

  FutureOr<void> _signin(event, emit) async {
    emit(const AuthLoading(true));
    try {
      await ff.users.signin(
        email: event.email,
        password: event.password,
      );
      emit(const AuthLoading(false));
      emit(AuthState(
        auth: ff.users.auth,
      ));
      currentUser.value = ff.users.auth?.user;
    } on FeeefValidationException catch (e) {
      emit(const AuthLoading(false));
      emit(AuthValidationError(e));
    } catch (e) {
      emit(const AuthLoading(false));
      emit(const AuthError('Invalid email or password'));
    }
  }

  FutureOr<void> _signup(AuthSignup event, emit) async {
    emit(const AuthLoading(true));
    try {
      await ff.users.signup(
        referral: event.referral,
        name: event.name,
        email: event.email,
        phone: event.phone,
        password: event.password,
      );
      emit(const AuthLoading(false));
      emit(AuthState(
        auth: ff.users.auth,
      ));
      currentUser.value = ff.users.auth?.user;
    } on FeeefValidationException catch (e) {
      emit(const AuthLoading(false));
      emit(AuthValidationError(e));
    } catch (e) {
      emit(const AuthLoading(false));
      emit(const AuthError('Invalid email or password'));
    }
  }

  FutureOr<void> _resetPassword(AuthResetPassword event, emit) async {
    emit(const AuthLoading(true));
    try {
      await ff.users.sendResetPasswordEmail(
        email: event.email,
      );
      emit(const AuthLoading(false));
    } catch (e) {
      emit(const AuthLoading(false));
      emit(const AuthError('Invalid email or password'));
    }
  }

  FutureOr<void> _check(event, emit) async {
    emit(const AuthLoading(true));
    try {
      await ff.users.me();
      emit(const AuthLoading(false));
      emit(AuthState(
        auth: ff.users.auth,
      ));
      currentUser.value = ff.users.auth?.user;
    } catch (e) {
      emit(const AuthLoading(false));
      emit(AuthState(auth: ff.users.auth));
      emit(const AuthError('Invalid email or password'));
    }
  }

  FutureOr<void> _signout(event, emit) async {
    emit(const AuthLoading(true));
    try {
      await ff.users.signout();
      currentUser.value = null;
      emit(const AuthLoading(false));
      emit(const AuthUnauthenticated());
    } catch (e) {
      emit(const AuthLoading(false));
      emit(const AuthError('Invalid email or password'));
    }
  }
}
