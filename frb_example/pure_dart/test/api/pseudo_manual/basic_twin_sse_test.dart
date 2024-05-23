// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `basic_test.dart` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:frb_example_pure_dart/src/rust/api/pseudo_manual/basic_twin_sse.dart';
import 'package:frb_example_pure_dart/src/rust/frb_generated.dart';
import 'package:test/test.dart';
import '../../test_utils.dart';
import 'dart:typed_data';

Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init();

  group('basic', () {
    addTestsIdentityFunctionCall(
        exampleBasicTypeI8TwinSse, <int>[0, -128, 127]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeI16TwinSse, <int>[0, -32768, 32767]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeI32TwinSse, <int>[0, -2147483648, 2147483647]);
    addTestsIdentityFunctionCall(exampleBasicTypeI64TwinSse, <PlatformInt64>[
      PlatformInt64.parse("0"),
      PlatformInt64.parse("-9007199254740992"),
      PlatformInt64.parse("9007199254740992"),
      PlatformInt64.parse("-9223372036854775808"),
      PlatformInt64.parse("9223372036854775807")
    ]);
    addTestsIdentityFunctionCall(exampleBasicTypeI128TwinSse, <BigInt>[
      BigInt.parse("0"),
      BigInt.parse("-9007199254740992"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("-9223372036854775808"),
      BigInt.parse("9223372036854775807"),
      BigInt.parse("-170141183460469231731687303715884105728"),
      BigInt.parse("170141183460469231731687303715884105727")
    ]);
    addTestsIdentityFunctionCall(exampleBasicTypeU8TwinSse, <int>[0, 255]);
    addTestsIdentityFunctionCall(exampleBasicTypeU16TwinSse, <int>[0, 65535]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeU32TwinSse, <int>[0, 4294967295]);
    addTestsIdentityFunctionCall(exampleBasicTypeU64TwinSse, <BigInt>[
      BigInt.parse("0"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("9223372036854775807"),
      BigInt.parse("18446744073709551615")
    ]);
    addTestsIdentityFunctionCall(exampleBasicTypeU128TwinSse, <BigInt>[
      BigInt.parse("0"),
      BigInt.parse("9007199254740992"),
      BigInt.parse("18446744073709551615"),
      BigInt.parse("340282366920938463463374607431768211455")
    ]);
    addTestsIdentityFunctionCall(exampleBasicTypeIsizeTwinSse, <PlatformInt64>[
      PlatformInt64.parse("0"),
      PlatformInt64.parse("-2147483648"),
      PlatformInt64.parse("2147483647"),
      if (!kIsWeb) BigInt.parse("-9007199254740992"),
      if (!kIsWeb) BigInt.parse("9007199254740992"),
      if (!kIsWeb) BigInt.parse("-9223372036854775808"),
      if (!kIsWeb) BigInt.parse("9223372036854775807")
    ]);
    addTestsIdentityFunctionCall(exampleBasicTypeUsizeTwinSse, <BigInt>[
      BigInt.parse("0"),
      BigInt.parse("4294967295"),
      if (!kIsWeb) BigInt.parse("9007199254740992"),
      if (!kIsWeb) BigInt.parse("9223372036854775807"),
      if (!kIsWeb) BigInt.parse("18446744073709551615")
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeF32TwinSse, <double>[0, -42.5, 123456]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeF64TwinSse, <double>[0, -42.5, 123456]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBoolTwinSse, <bool>[false, true]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeStringTwinSse, <String>["", "hello", "😂"]);
    addTestsIdentityFunctionCall(exampleBasicTypeBytesTwinSse, <Uint8List>[
      Uint8List.fromList([]),
      Uint8List.fromList([255, 0]),
      Uint8List.fromList([10, 20, 30, 40])
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBasicPrimitiveEnumTwinSseTwinSse,
        <BasicPrimitiveEnumTwinSse>[
          BasicPrimitiveEnumTwinSse.apple,
          BasicPrimitiveEnumTwinSse.orange
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBasicGeneralEnumTwinSseTwinSse,
        <BasicGeneralEnumTwinSse>[
          BasicGeneralEnumTwinSse.apple(field: "one"),
          BasicGeneralEnumTwinSse.orange()
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicTypeBasicStructTwinSseTwinSse, <BasicStructTwinSse>[
      BasicStructTwinSse(apple: null, orange: null),
      BasicStructTwinSse(apple: "one", orange: 42)
    ]);
  });
}
