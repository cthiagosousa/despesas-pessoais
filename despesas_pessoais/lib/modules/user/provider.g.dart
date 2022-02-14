// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserProvider on _UserProvider, Store {
  final _$userAtom = Atom(name: '_UserProvider.user');

  @override
  User? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$_UserProviderActionController =
      ActionController(name: '_UserProvider');

  @override
  void setUser(User value) {
    final _$actionInfo = _$_UserProviderActionController.startAction(
        name: '_UserProvider.setUser');
    try {
      return super.setUser(value);
    } finally {
      _$_UserProviderActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
