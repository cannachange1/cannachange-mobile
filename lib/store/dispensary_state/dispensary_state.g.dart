// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispensary_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DispensaryState on _DispensaryState, Store {
  final _$qrCodeAtom = Atom(name: '_DispensaryState.qrCode');

  @override
  String get qrCode {
    _$qrCodeAtom.reportRead();
    return super.qrCode;
  }

  @override
  set qrCode(String value) {
    _$qrCodeAtom.reportWrite(value, super.qrCode, () {
      super.qrCode = value;
    });
  }

  final _$imageUrlAtom = Atom(name: '_DispensaryState.imageUrl');

  @override
  String get imageUrl {
    _$imageUrlAtom.reportRead();
    return super.imageUrl;
  }

  @override
  set imageUrl(String value) {
    _$imageUrlAtom.reportWrite(value, super.imageUrl, () {
      super.imageUrl = value;
    });
  }

  final _$addPointsAsyncAction = AsyncAction('_DispensaryState.addPoints');

  @override
  Future<void> addPoints(int point, String code) {
    return _$addPointsAsyncAction.run(() => super.addPoints(point, code));
  }

  final _$redeemPointsAsyncAction =
      AsyncAction('_DispensaryState.redeemPoints');

  @override
  Future<void> redeemPoints(int point, String code) {
    return _$redeemPointsAsyncAction.run(() => super.redeemPoints(point, code));
  }

  @override
  String toString() {
    return '''
qrCode: ${qrCode},
imageUrl: ${imageUrl}
    ''';
  }
}
