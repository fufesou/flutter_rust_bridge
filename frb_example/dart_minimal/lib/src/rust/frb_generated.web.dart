// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.10.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables

import 'api/minimal.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  CrossPlatformFinalizerArg
      get rust_arc_decrement_strong_count_AnotherOpaqueTypePtr => wire
          .rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType;

  CrossPlatformFinalizerArg
      get rust_arc_decrement_strong_count_MyOpaqueTypeAnotherOpaqueTypePtr => wire
          .rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType;

  @protected
  AnotherOpaqueType
      dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
          dynamic raw);

  @protected
  MyOpaqueTypeAnotherOpaqueType
      dco_decode_Auto_Owned_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
          dynamic raw);

  @protected
  AnotherOpaqueType
      dco_decode_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
          dynamic raw);

  @protected
  MyOpaqueTypeAnotherOpaqueType
      dco_decode_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
          dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  int dco_decode_usize(dynamic raw);

  @protected
  AnotherOpaqueType
      sse_decode_Auto_Owned_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
          SseDeserializer deserializer);

  @protected
  MyOpaqueTypeAnotherOpaqueType
      sse_decode_Auto_Owned_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
          SseDeserializer deserializer);

  @protected
  AnotherOpaqueType
      sse_decode_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
          SseDeserializer deserializer);

  @protected
  MyOpaqueTypeAnotherOpaqueType
      sse_decode_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
          SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  int sse_decode_usize(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  PlatformPointer
      cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
          AnotherOpaqueType raw);

  @protected
  PlatformPointer
      cst_encode_Auto_Owned_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
          MyOpaqueTypeAnotherOpaqueType raw);

  @protected
  PlatformPointer
      cst_encode_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
          AnotherOpaqueType raw);

  @protected
  PlatformPointer
      cst_encode_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
          MyOpaqueTypeAnotherOpaqueType raw);

  @protected
  int cst_encode_i_32(int raw);

  @protected
  void cst_encode_unit(void raw);

  @protected
  int cst_encode_usize(int raw);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
          AnotherOpaqueType self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
          MyOpaqueTypeAnotherOpaqueType self, SseSerializer serializer);

  @protected
  void sse_encode_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
      AnotherOpaqueType self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
          MyOpaqueTypeAnotherOpaqueType self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(int self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire extends BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);

  void dart_fn_deliver_output(int call_id, PlatformGeneralizedUint8ListPtr ptr_,
          int rust_vec_len_, int data_len_) =>
      wasmModule.dart_fn_deliver_output(
          call_id, ptr_, rust_vec_len_, data_len_);

  void wire_bar(NativePortType port_) => wasmModule.wire_bar(port_);

  void wire_foo(NativePortType port_) => wasmModule.wire_foo(port_);

  void wire_init_app(NativePortType port_) => wasmModule.wire_init_app(port_);

  void wire_minimal_adder(NativePortType port_, int a, int b) =>
      wasmModule.wire_minimal_adder(port_, a, b);

  void rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
          dynamic ptr) =>
      wasmModule
          .rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
              ptr);

  void rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
          dynamic ptr) =>
      wasmModule
          .rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
              ptr);

  void rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
          dynamic ptr) =>
      wasmModule
          .rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
              ptr);

  void rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
          dynamic ptr) =>
      wasmModule
          .rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
              ptr);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
class RustLibWasmModule implements WasmModule {
  @override
  external Object /* Promise */ call([String? moduleName]);

  @override
  external RustLibWasmModule bind(dynamic thisArg, String moduleName);

  external void dart_fn_deliver_output(int call_id,
      PlatformGeneralizedUint8ListPtr ptr_, int rust_vec_len_, int data_len_);

  external void wire_bar(NativePortType port_);

  external void wire_foo(NativePortType port_);

  external void wire_init_app(NativePortType port_);

  external void wire_minimal_adder(NativePortType port_, int a, int b);

  external void
      rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
          dynamic ptr);

  external void
      rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalAnotherOpaqueType(
          dynamic ptr);

  external void
      rust_arc_increment_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
          dynamic ptr);

  external void
      rust_arc_decrement_strong_count_RustOpaque_stdsyncRwLockcrateapiminimalMyOpaqueTypecrateapiminimalAnotherOpaqueType(
          dynamic ptr);
}
