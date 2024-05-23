// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `basic_optional_test.dart` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:frb_example_pure_dart_pde/src/rust/api/pseudo_manual/basic_optional_twin_sync.dart';
import 'package:frb_example_pure_dart_pde/src/rust/frb_generated.dart';
import 'package:test/test.dart';
import '../../test_utils.dart';
import 'dart:typed_data';
import 'package:frb_example_pure_dart_pde/src/rust/api/pseudo_manual/basic_twin_sync.dart';

Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init();

  group('basic_optional', () {
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeI8TwinSync,
        <int?>[null, 0, -128, 127, 79, -79]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeI16TwinSync,
        <int?>[null, 0, -32768, 32767, 12345, -12345]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeI32TwinSync,
        <int?>[null, 0, -2147483648, 2147483647, 1234567890, -1234567890]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeI64TwinSync, <PlatformInt64?>[
      null,
      PlatformInt64.parse("0"),
      PlatformInt64.parse("-9007199254740992"),
      PlatformInt64.parse("9007199254740992"),
      PlatformInt64.parse("-9223372036854775808"),
      PlatformInt64.parse("9223372036854775807"),
      PlatformInt64.parse("1234567890123456789"),
      PlatformInt64.parse("-1234567890123456789")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeI128TwinSync, <BigInt?>[
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
        exampleBasicOptionalTypeU8TwinSync, <int?>[null, 0, 255, 123]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeU16TwinSync, <int?>[null, 0, 65535, 12345]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeU32TwinSync,
        <int?>[null, 0, 4294967295, 2468013579]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeU64TwinSync, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("9223372036854775807"),
      BigInt.parse("9223372036854775808"),
      BigInt.parse("18446744073709551615"),
      BigInt.parse("12345678901234456789")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeU128TwinSync, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("9223372036854775807"),
      BigInt.parse("9223372036854775808"),
      BigInt.parse("18446744073709551615"),
      BigInt.parse("340282366920938463463374607431768211455")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeIsizeTwinSync, <PlatformInt64?>[
      null,
      PlatformInt64.parse("0"),
      PlatformInt64.parse("-2147483648"),
      PlatformInt64.parse("2147483647"),
      PlatformInt64.parse("-1234234567"),
      PlatformInt64.parse("1234234567"),
      if (!kIsWeb) PlatformInt64.parse("-9007199254740992"),
      if (!kIsWeb) PlatformInt64.parse("9007199254740992"),
      if (!kIsWeb) PlatformInt64.parse("-9223372036854775808"),
      if (!kIsWeb) PlatformInt64.parse("9223372036854775807"),
      if (!kIsWeb) PlatformInt64.parse("-12345678901234456789"),
      if (!kIsWeb) PlatformInt64.parse("12345678901234456789")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeUsizeTwinSync, <BigInt?>[
      null,
      BigInt.parse("0"),
      BigInt.parse("4294967295"),
      BigInt.parse("1234234567"),
      if (!kIsWeb) BigInt.parse("9007199254740992"),
      if (!kIsWeb) BigInt.parse("9223372036854775807"),
      if (!kIsWeb) BigInt.parse("18446744073709551615"),
      if (!kIsWeb) BigInt.parse("12345678901234456789")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeF32TwinSync, <double?>[null, 0, -42.5, 123456]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeF64TwinSync, <double?>[null, 0, -42.5, 123456]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBoolTwinSync, <bool?>[null, false, true]);
    addTestsIdentityFunctionCall(exampleBasicOptionalTypeStringTwinSync,
        <String?>[null, "", "hello", "😂"]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBytesTwinSync, <Uint8List?>[
      null,
      Uint8List.fromList([]),
      Uint8List.fromList([255, 0]),
      Uint8List.fromList([10, 20, 30, 40])
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBasicPrimitiveEnumTwinSyncTwinSync,
        <BasicPrimitiveEnumTwinSync?>[
          null,
          BasicPrimitiveEnumTwinSync.apple,
          BasicPrimitiveEnumTwinSync.orange
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBasicGeneralEnumTwinSyncTwinSync,
        <BasicGeneralEnumTwinSync?>[
          null,
          BasicGeneralEnumTwinSync.apple(field: "one"),
          BasicGeneralEnumTwinSync.orange()
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicOptionalTypeBasicStructTwinSyncTwinSync,
        <BasicStructTwinSync?>[
          null,
          BasicStructTwinSync(apple: null, orange: null),
          BasicStructTwinSync(apple: "one", orange: 42)
        ]);
  });
}
