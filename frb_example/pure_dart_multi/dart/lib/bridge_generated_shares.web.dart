// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.77.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated_shares.dart';
export 'bridge_generated_shares.dart';
import 'bridge_generated_shares.web.dart';

class BridgeGeneratedSharesPlatform extends FlutterRustBridgeBase<BridgeGeneratedSharesWire>
    with FlutterRustBridgeSetupMixin {
  BridgeGeneratedSharesPlatform(FutureOr<WasmModule> dylib) : super(BridgeGeneratedSharesWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  String api2wire_String(String raw) {
    return raw;
  }

  @protected
  Float32List api2wire_ZeroCopyBuffer_Float32List(Float32List raw) {
    return api2wire_float_32_list(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_cross_shared_struct_in_block_1_and_2(CrossSharedStructInBlock1And2 raw) {
    return api2wire_cross_shared_struct_in_block_1_and_2(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_cross_shared_struct_in_block_2_and_3(CrossSharedStructInBlock2And3 raw) {
    return api2wire_cross_shared_struct_in_block_2_and_3(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_enum_type(EnumType raw) {
    return api2wire_enum_type(raw);
  }

  @protected
  double api2wire_box_autoadd_f64(double raw) {
    return api2wire_f64(raw);
  }

  @protected
  int api2wire_box_autoadd_i32(int raw) {
    return api2wire_i32(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_shared_struct_in_all_blocks(SharedStructInAllBlocks raw) {
    return api2wire_shared_struct_in_all_blocks(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_shared_struct_in_block_1_and_2(SharedStructInBlock1And2 raw) {
    return api2wire_shared_struct_in_block_1_and_2(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_shared_struct_in_block_2_and_3(SharedStructInBlock2And3 raw) {
    return api2wire_shared_struct_in_block_2_and_3(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_shared_struct_only_for_sync_test(SharedStructOnlyForSyncTest raw) {
    return api2wire_shared_struct_only_for_sync_test(raw);
  }

  @protected
  List<dynamic> api2wire_box_enum_type(EnumType raw) {
    return api2wire_enum_type(raw);
  }

  @protected
  List<dynamic> api2wire_cross_shared_struct_in_block_1_and_2(CrossSharedStructInBlock1And2 raw) {
    return [api2wire_String(raw.name)];
  }

  @protected
  List<dynamic> api2wire_cross_shared_struct_in_block_2_and_3(CrossSharedStructInBlock2And3 raw) {
    return [api2wire_String(raw.name)];
  }

  @protected
  List<dynamic> api2wire_enum_type(EnumType raw) {
    if (raw is EnumType_Empty) {
      return [0];
    }
    if (raw is EnumType_Primitives) {
      return [1, api2wire_i32(raw.int32), api2wire_f64(raw.float64), api2wire_bool(raw.boolean)];
    }
    if (raw is EnumType_Nested) {
      return [2, api2wire_box_enum_type(raw.field0)];
    }
    if (raw is EnumType_Optional) {
      return [3, api2wire_opt_box_autoadd_i32(raw.field0), api2wire_opt_uint_8_list(raw.field1)];
    }
    if (raw is EnumType_Buffer) {
      return [4, api2wire_ZeroCopyBuffer_Float32List(raw.field0)];
    }
    if (raw is EnumType_Enums) {
      return [5, api2wire_weekdays(raw.field0)];
    }
    if (raw is EnumType_BytesArray) {
      return [6, api2wire_u8_array_3(raw.field0)];
    }

    throw Exception('unreachable');
  }

  @protected
  Float32List api2wire_float_32_list(Float32List raw) {
    return raw;
  }

  @protected
  List<dynamic> api2wire_list_enum_type(List<EnumType> raw) {
    return raw.map(api2wire_enum_type).toList();
  }

  @protected
  int? api2wire_opt_box_autoadd_i32(int? raw) {
    return raw == null ? null : api2wire_box_autoadd_i32(raw);
  }

  @protected
  List<dynamic>? api2wire_opt_list_enum_type(List<EnumType>? raw) {
    return raw == null ? null : api2wire_list_enum_type(raw);
  }

  @protected
  Uint8List? api2wire_opt_uint_8_list(Uint8List? raw) {
    return raw == null ? null : api2wire_uint_8_list(raw);
  }

  @protected
  List<dynamic> api2wire_shared_struct_in_all_blocks(SharedStructInAllBlocks raw) {
    return [
      api2wire_i32(raw.id),
      api2wire_f64(raw.num),
      api2wire_String(raw.name),
      api2wire_opt_list_enum_type(raw.enumList)
    ];
  }

  @protected
  List<dynamic> api2wire_shared_struct_in_block_1_and_2(SharedStructInBlock1And2 raw) {
    return [api2wire_i32(raw.id), api2wire_f64(raw.num), api2wire_String(raw.name)];
  }

  @protected
  List<dynamic> api2wire_shared_struct_in_block_2_and_3(SharedStructInBlock2And3 raw) {
    return [api2wire_i32(raw.id), api2wire_f64(raw.num), api2wire_String(raw.name)];
  }

  @protected
  List<dynamic> api2wire_shared_struct_only_for_sync_test(SharedStructOnlyForSyncTest raw) {
    return [api2wire_String(raw.name), api2wire_f64(raw.score)];
  }

  @protected
  Object api2wire_u64(int raw) {
    return castNativeBigInt(raw);
  }

  @protected
  Uint8List api2wire_u8_array_3(U8Array3 raw) {
    return Uint8List.fromList(raw);
  }

  @protected
  Uint8List api2wire_uint_8_list(Uint8List raw) {
    return raw;
  }

// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external BridgeGeneratedSharesWasmModule get wasmModule;

@JS()
@anonymous
class BridgeGeneratedSharesWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external BridgeGeneratedSharesWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_test_method__method__CrossSharedStructInBlock1And2(
      NativePortType port_, List<dynamic> that, String message);

  external dynamic /* void */ wire_test_static_method__static_method__CrossSharedStructInBlock1And2(
      NativePortType port_, String message);

  external dynamic /* void */ wire_test_enum_method__method__EnumType(
      NativePortType port_, List<dynamic> that, String message);

  external dynamic /* void */ wire_test_static_enum_method__static_method__EnumType(
      NativePortType port_, String message);

  external dynamic /* void */ wire_test_method__method__SharedStructInAllBlocks(
      NativePortType port_, List<dynamic> that, String message, int num);

  external dynamic /* void */ wire_test_static_method__static_method__SharedStructInAllBlocks(
      NativePortType port_, String message);

  external dynamic /* void */ wire_test_method__method__SharedStructInBlock1And2(
      NativePortType port_, List<dynamic> that, String message);

  external dynamic /* void */ wire_test_static_method__static_method__SharedStructInBlock1And2(
      NativePortType port_, String message);

  external dynamic /* void */ wire_test_enum_method__method__Weekdays(NativePortType port_, int that, String message);

  external dynamic /* void */ wire_test_static_enum_method__static_method__Weekdays(
      NativePortType port_, String message);

  external dynamic /* void */ wire_test_method__method__CrossSharedStructInBlock2And3(
      NativePortType port_, List<dynamic> that, String message);

  external dynamic /* void */ wire_test_static_method__static_method__CrossSharedStructInBlock2And3(
      NativePortType port_, String message);

  external dynamic /* void */ wire_test_method__method__SharedStructInBlock2And3(
      NativePortType port_, List<dynamic> that, String message);

  external dynamic /* void */ wire_test_static_method__static_method__SharedStructInBlock2And3(
      NativePortType port_, String message);

  external dynamic /* void */ wire_test_method__method__SharedStructOnlyForSyncTest(
      NativePortType port_, List<dynamic> that, String message);

  external dynamic /* void */ wire_test_static_method__static_method__SharedStructOnlyForSyncTest(
      NativePortType port_, String message);
}

// Section: WASM wire connector

class BridgeGeneratedSharesWire extends FlutterRustBridgeWasmWireBase<BridgeGeneratedSharesWasmModule> {
  BridgeGeneratedSharesWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<BridgeGeneratedSharesWasmModule>(module));

  void wire_test_method__method__CrossSharedStructInBlock1And2(
          NativePortType port_, List<dynamic> that, String message) =>
      wasmModule.wire_test_method__method__CrossSharedStructInBlock1And2(port_, that, message);

  void wire_test_static_method__static_method__CrossSharedStructInBlock1And2(NativePortType port_, String message) =>
      wasmModule.wire_test_static_method__static_method__CrossSharedStructInBlock1And2(port_, message);

  void wire_test_enum_method__method__EnumType(NativePortType port_, List<dynamic> that, String message) =>
      wasmModule.wire_test_enum_method__method__EnumType(port_, that, message);

  void wire_test_static_enum_method__static_method__EnumType(NativePortType port_, String message) =>
      wasmModule.wire_test_static_enum_method__static_method__EnumType(port_, message);

  void wire_test_method__method__SharedStructInAllBlocks(
          NativePortType port_, List<dynamic> that, String message, int num) =>
      wasmModule.wire_test_method__method__SharedStructInAllBlocks(port_, that, message, num);

  void wire_test_static_method__static_method__SharedStructInAllBlocks(NativePortType port_, String message) =>
      wasmModule.wire_test_static_method__static_method__SharedStructInAllBlocks(port_, message);

  void wire_test_method__method__SharedStructInBlock1And2(NativePortType port_, List<dynamic> that, String message) =>
      wasmModule.wire_test_method__method__SharedStructInBlock1And2(port_, that, message);

  void wire_test_static_method__static_method__SharedStructInBlock1And2(NativePortType port_, String message) =>
      wasmModule.wire_test_static_method__static_method__SharedStructInBlock1And2(port_, message);

  void wire_test_enum_method__method__Weekdays(NativePortType port_, int that, String message) =>
      wasmModule.wire_test_enum_method__method__Weekdays(port_, that, message);

  void wire_test_static_enum_method__static_method__Weekdays(NativePortType port_, String message) =>
      wasmModule.wire_test_static_enum_method__static_method__Weekdays(port_, message);

  void wire_test_method__method__CrossSharedStructInBlock2And3(
          NativePortType port_, List<dynamic> that, String message) =>
      wasmModule.wire_test_method__method__CrossSharedStructInBlock2And3(port_, that, message);

  void wire_test_static_method__static_method__CrossSharedStructInBlock2And3(NativePortType port_, String message) =>
      wasmModule.wire_test_static_method__static_method__CrossSharedStructInBlock2And3(port_, message);

  void wire_test_method__method__SharedStructInBlock2And3(NativePortType port_, List<dynamic> that, String message) =>
      wasmModule.wire_test_method__method__SharedStructInBlock2And3(port_, that, message);

  void wire_test_static_method__static_method__SharedStructInBlock2And3(NativePortType port_, String message) =>
      wasmModule.wire_test_static_method__static_method__SharedStructInBlock2And3(port_, message);

  void wire_test_method__method__SharedStructOnlyForSyncTest(
          NativePortType port_, List<dynamic> that, String message) =>
      wasmModule.wire_test_method__method__SharedStructOnlyForSyncTest(port_, that, message);

  void wire_test_static_method__static_method__SharedStructOnlyForSyncTest(NativePortType port_, String message) =>
      wasmModule.wire_test_static_method__static_method__SharedStructOnlyForSyncTest(port_, message);
}
