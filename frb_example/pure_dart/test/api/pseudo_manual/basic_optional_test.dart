// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:frb_example_pure_dart/src/rust/api/pseudo_manual/basic_optional.dart';
import 'package:frb_example_pure_dart/src/rust/frb_generated.dart';
import 'package:test/test.dart';
import '../../test_utils.dart';
import 'dart:typed_data';
import 'package:frb_example_pure_dart/src/rust/api/pseudo_manual/basic.dart';

Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init();

  group('basic_optional', () {
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeI8TwinNormal, <int?>[null, 0, -128, 127]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeI16TwinNormal, <int?>[null, 0, -32768, 32767]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeI32TwinNormal,
        <int?>[null, 0, -2147483648, 2147483647]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeI64TwinNormal, <PlatformInt64?>[
      null,
      PlatformInt64.parse("0"),
      PlatformInt64.parse("-9007199254740992"),
      PlatformInt64.parse("9007199254740992"),
      PlatformInt64.parse("-9223372036854775808"),
      PlatformInt64.parse("9223372036854775807")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeI128TwinNormal, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("-9007199254740992"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("-9223372036854775808"),
      BigInt.parse("9223372036854775807"),
      BigInt.parse("-170141183460469231731687303715884105728"),
      BigInt.parse("170141183460469231731687303715884105727")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeU8TwinNormal, <int?>[null, 0, 255]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeU16TwinNormal, <int?>[null, 0, 65535]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeU32TwinNormal, <int?>[null, 0, 4294967295]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeU64TwinNormal, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("9223372036854775807"),
      BigInt.parse("18446744073709551615")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeU128TwinNormal, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("18446744073709551615"),
      BigInt.parse("340282366920938463463374607431768211455")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeIsizeTwinNormal, <PlatformInt64?>[
      null,
      PlatformInt64.parse("0"),
      PlatformInt64.parse("-2147483648"),
      PlatformInt64.parse("2147483647"),
      if (!kIsWeb) BigInt.parse("-9007199254740992"),
      if (!kIsWeb) BigInt.parse("9007199254740992"),
      if (!kIsWeb) BigInt.parse("-9223372036854775808"),
      if (!kIsWeb) BigInt.parse("9223372036854775807")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeUsizeTwinNormal, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("4294967295"),
      if (!kIsWeb) BigInt.parse("9007199254740992"),
      if (!kIsWeb) BigInt.parse("9223372036854775807"),
      if (!kIsWeb) BigInt.parse("18446744073709551615")
    ]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeF32TwinNormal,
        <double?>[null, 0, -42.5, 123456]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeF64TwinNormal,
        <double?>[null, 0, -42.5, 123456]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBoolTwinNormal, <bool?>[null, false, true]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeStringTwinNormal,
        <String?>[null, "", "hello", "😂"]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBytesTwinNormal, <Uint8List?>[
      null,
      Uint8List.fromList([]),
      Uint8List.fromList([255, 0]),
      Uint8List.fromList([10, 20, 30, 40])
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBasicPrimitiveEnumTwinNormalTwinNormal,
        <BasicPrimitiveEnumTwinNormal?>[
          null,
          BasicPrimitiveEnumTwinNormal.apple,
          BasicPrimitiveEnumTwinNormal.orange
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBasicGeneralEnumTwinNormalTwinNormal,
        <BasicGeneralEnumTwinNormal?>[
          null,
          BasicGeneralEnumTwinNormal.apple(field: "one"),
          BasicGeneralEnumTwinNormal.orange()
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBasicStructTwinNormalTwinNormal,
        <BasicStructTwinNormal?>[
          null,
          BasicStructTwinNormal(apple: null, orange: null),
          BasicStructTwinNormal(apple: "one", orange: 42)
        ]);
  });
}
