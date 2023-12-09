// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 1.82.4.

// ignore_for_file: unused_import, unused_element, duplicate_ignore, invalid_use_of_internal_member

import 'api/minimal.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.io.dart' if (dart.library.html) 'frb_generated.web.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Main entrypoint of the Rust API
class RustLib extends BaseEntrypoint<RustLibApi, RustLibApiImpl, RustLibWire> {
  @internal
  static final instance = RustLib._();

  RustLib._();

  /// Initialize flutter_rust_bridge
  static Future<void> init({
    RustLibApi? api,
    BaseHandler? handler,
    ExternalLibrary? externalLibrary,
  }) async {
    await instance.initImpl(
      api: api,
      handler: handler,
      externalLibrary: externalLibrary,
    );
  }

  /// Dispose flutter_rust_bridge
  ///
  /// The call to this function is optional, since flutter_rust_bridge (and everything else)
  /// is automatically disposed when the app stops.
  static void dispose() => instance.disposeImpl();

  @override
  ApiImplConstructor<RustLibApiImpl, RustLibWire> get apiImplConstructor =>
      RustLibApiImpl.new;

  @override
  WireConstructor<RustLibWire> get wireConstructor =>
      RustLibWire.fromExternalLibrary;

  @override
  ExternalLibraryLoaderConfig get defaultExternalLibraryLoaderConfig =>
      kDefaultExternalLibraryLoaderConfig;

  static const kDefaultExternalLibraryLoaderConfig =
      ExternalLibraryLoaderConfig(
    stem: 'frb_example_dart_minimal',
    ioDirectory: 'rust/target/release/',
    webPrefix: 'pkg/',
  );
}

abstract class RustLibApi extends BaseApi {
  Future<Hello> hello({required Hello a, dynamic hint});

  Future<int> minimalAdder({required int a, required int b, dynamic hint});
}

class RustLibApiImpl extends RustLibApiImplPlatform implements RustLibApi {
  RustLibApiImpl({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @override
  Future<Hello> hello({required Hello a, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        var arg0 = cst_encode_box_autoadd_hello(a);
        return wire.wire_hello(port_, arg0);
      },
      codec: DcoCodec(
        decodeSuccessData: _dco_decode_hello,
        decodeErrorData: null,
      ),
      constMeta: kHelloConstMeta,
      argValues: [a],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kHelloConstMeta => const TaskConstMeta(
        debugName: "hello",
        argNames: ["a"],
      );

  @override
  Future<int> minimalAdder({required int a, required int b, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        var arg0 = cst_encode_i_32(a);
        var arg1 = cst_encode_i_32(b);
        return wire.wire_minimal_adder(port_, arg0, arg1);
      },
      codec: DcoCodec(
        decodeSuccessData: _dco_decode_i_32,
        decodeErrorData: null,
      ),
      constMeta: kMinimalAdderConstMeta,
      argValues: [a, b],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kMinimalAdderConstMeta => const TaskConstMeta(
        debugName: "minimal_adder",
        argNames: ["a", "b"],
      );

  Hello _dco_decode_hello(dynamic raw) {
    switch (raw[0]) {
      case 0:
        return Hello_Apple();
      case 1:
        return Hello_Orange(
          _dco_decode_i_32(raw[1]),
        );
      case 2:
        return Hello_Raspi(
          helloWorld: _dco_decode_i_32(raw[1]),
          anotherField: _dco_decode_i_32(raw[2]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  int _dco_decode_i_32(dynamic raw) {
    return raw as int;
  }

  void _dco_decode_unit(dynamic raw) {
    return;
  }

  Hello _sse_decode_hello(SseDeserializer deserializer) {
    var tag_ = _sse_decode_i_32(deserializer);
    switch (tag_) {
      case 0:
        return Hello_Apple();
      case 1:
        var field0 = _sse_decode_i_32(deserializer);
        return Hello_Orange(field0);
      case 2:
        var helloWorld = _sse_decode_i_32(deserializer);
        var anotherField = _sse_decode_i_32(deserializer);
        return Hello_Raspi(helloWorld: helloWorld, anotherField: anotherField);
      default:
        throw UnimplementedError('');
    }
  }

  int _sse_decode_i_32(SseDeserializer deserializer) {
    return deserializer.buffer.getInt32();
  }

  void _sse_decode_unit(SseDeserializer deserializer) {}

  void _sse_encode_box_autoadd_hello(Hello self, SseSerializer serializer) {
    _sse_encode_hello(self, serializer);
  }

  void _sse_encode_hello(Hello self, SseSerializer serializer) {
    switch (self) {
      case Hello_Apple():
        _sse_encode_i_32(0, serializer);

      case Hello_Orange(field0: final field0):
        _sse_encode_i_32(1, serializer);
        _sse_encode_i_32(field0, serializer);

      case Hello_Raspi(
          helloWorld: final helloWorld,
          anotherField: final anotherField
        ):
        _sse_encode_i_32(2, serializer);
        _sse_encode_i_32(helloWorld, serializer);
        _sse_encode_i_32(anotherField, serializer);
    }
  }

  void _sse_encode_i_32(int self, SseSerializer serializer) {
    serializer.buffer.putInt32(self);
  }
}

// Section: dart2rust

int cst_encode_i_32(int raw) {
  return raw;
}
