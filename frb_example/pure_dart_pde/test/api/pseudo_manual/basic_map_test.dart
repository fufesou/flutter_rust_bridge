// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

import 'package:frb_example_pure_dart_pde/src/rust/api/pseudo_manual/basic_map.dart';
import 'package:frb_example_pure_dart_pde/src/rust/frb_generated.dart';
import 'package:test/test.dart';
import '../../test_utils.dart';
import 'dart:typed_data';
import 'package:frb_example_pure_dart_pde/src/rust/api/pseudo_manual/basic.dart';

Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init();

  group('basic_map', () {
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeI8TwinNormal, <Map<int, int>>[
      {},
      {42: 0},
      {42: -128},
      {42: 127}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeI16TwinNormal, <Map<int, int>>[
      {},
      {42: 0},
      {42: -32768},
      {42: 32767}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeI32TwinNormal, <Map<int, int>>[
      {},
      {42: 0},
      {42: -2147483648},
      {42: 2147483647}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeI64TwinNormal, <Map<int, int>>[
      {},
      {42: 0},
      {42: -9007199254740992},
      {42: 9007199254740992}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeI128TwinNormal, <Map<int, BigInt>>[
      {},
      {42: 0},
      {42: -9007199254740992},
      {42: 9007199254740992},
      {42: -9223372036854775808},
      {42: 9223372036854775807},
      {42: -170141183460469231731687303715884105728},
      {42: 170141183460469231731687303715884105727}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeU8TwinNormal, <Map<int, int>>[
      {},
      {42: 0},
      {42: 255}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeU16TwinNormal, <Map<int, int>>[
      {},
      {42: 0},
      {42: 65535}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeU32TwinNormal, <Map<int, int>>[
      {},
      {42: 0},
      {42: 4294967295}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeU64TwinNormal, <Map<int, int>>[
      {},
      {42: 0},
      {42: 9007199254740992}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeU128TwinNormal, <Map<int, BigInt>>[
      {},
      {42: 0},
      {42: 9007199254740992},
      {42: 18446744073709551615},
      {42: 340282366920938463463374607431768211455}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeIsizeTwinNormal, <Map<int, int>>[
      {},
      {42: 0},
      {42: -2147483648},
      {42: 2147483647}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeUsizeTwinNormal, <Map<int, int>>[
      {},
      {42: 0},
      {42: 4294967295}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeF32TwinNormal, <Map<int, double>>[
      {},
      {42: 0},
      {42: -42.5},
      {42: 123456}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeF64TwinNormal, <Map<int, double>>[
      {},
      {42: 0},
      {42: -42.5},
      {42: 123456}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBoolTwinNormal, <Map<int, bool>>[
      {},
      {42: false},
      {42: true}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeStringTwinNormal, <Map<int, String>>[
      {},
      {42: ""},
      {42: "hello"},
      {42: "😂"}
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBytesTwinNormal, <Map<int, Uint8List>>[
      {},
      {42: Uint8List.fromList([])},
      {
        42: Uint8List.fromList([255, 0])
      },
      {
        42: Uint8List.fromList([10, 20, 30, 40])
      }
    ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBasicPrimitiveEnumTwinNormalTwinNormal,
        <Map<int, BasicPrimitiveEnumTwinNormal>>[
          {},
          {42: BasicPrimitiveEnumTwinNormal.apple},
          {42: BasicPrimitiveEnumTwinNormal.orange}
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBasicGeneralEnumTwinNormalTwinNormal,
        <Map<int, BasicGeneralEnumTwinNormal>>[
          {},
          {42: BasicGeneralEnumTwinNormal.apple(field: "one")},
          {42: BasicGeneralEnumTwinNormal.orange()}
        ]);
    addTestsIdentityFunctionCall(
        exampleBasicMapTypeBasicStructTwinNormalTwinNormal,
        <Map<int, BasicStructTwinNormal>>[
          {},
          {42: BasicStructTwinNormal(apple: null, orange: null)},
          {42: BasicStructTwinNormal(apple: "one", orange: 42)}
        ]);
  });
}
