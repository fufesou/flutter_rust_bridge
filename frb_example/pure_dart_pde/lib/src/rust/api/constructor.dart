// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.35.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<ConstructorOpaqueStructTwinNormal>>
@sealed
class ConstructorOpaqueStructTwinNormal extends RustOpaque {
  ConstructorOpaqueStructTwinNormal.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  ConstructorOpaqueStructTwinNormal.sseDecode(
      BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_ConstructorOpaqueStructTwinNormal,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_ConstructorOpaqueStructTwinNormal,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_ConstructorOpaqueStructTwinNormalPtr,
  );

  void check({dynamic hint}) => RustLib.instance.api
      .crateApiConstructorConstructorOpaqueStructTwinNormalCheck(
          that: this, hint: hint);

  String get one => RustLib.instance.api
          .crateApiConstructorConstructorOpaqueStructTwinNormalGetOne(
        that: this,
      );

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<ConstructorOpaqueStructTwinNormal> newInstance(
          {dynamic hint}) =>
      RustLib.instance.api
          .crateApiConstructorConstructorOpaqueStructTwinNormalNew(hint: hint);

  void set one(String one) => RustLib.instance.api
      .crateApiConstructorConstructorOpaqueStructTwinNormalSetOne(
          that: this, one: one);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<ConstructorOpaqueSyncStructTwinNormal>>
@sealed
class ConstructorOpaqueSyncStructTwinNormal extends RustOpaque {
  ConstructorOpaqueSyncStructTwinNormal.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  ConstructorOpaqueSyncStructTwinNormal.sseDecode(
      BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_ConstructorOpaqueSyncStructTwinNormal,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_ConstructorOpaqueSyncStructTwinNormal,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_ConstructorOpaqueSyncStructTwinNormalPtr,
  );

  void check({dynamic hint}) => RustLib.instance.api
      .crateApiConstructorConstructorOpaqueSyncStructTwinNormalCheck(
          that: this, hint: hint);

  String get one => RustLib.instance.api
          .crateApiConstructorConstructorOpaqueSyncStructTwinNormalGetOne(
        that: this,
      );

  factory ConstructorOpaqueSyncStructTwinNormal({dynamic hint}) => RustLib
      .instance.api
      .crateApiConstructorConstructorOpaqueSyncStructTwinNormalNew(hint: hint);

  void set one(String one) => RustLib.instance.api
      .crateApiConstructorConstructorOpaqueSyncStructTwinNormalSetOne(
          that: this, one: one);
}

class ConstructorTranslatableStructTwinNormal {
  final String one;

  const ConstructorTranslatableStructTwinNormal({
    required this.one,
  });

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<ConstructorTranslatableStructTwinNormal> newInstance(
          {dynamic hint}) =>
      RustLib.instance.api
          .crateApiConstructorConstructorTranslatableStructTwinNormalNew(
              hint: hint);

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructorTranslatableStructTwinNormal &&
          runtimeType == other.runtimeType &&
          one == other.one;
}

class ConstructorTranslatableSyncStructTwinNormal {
  final String one;

  const ConstructorTranslatableSyncStructTwinNormal.raw({
    required this.one,
  });

  factory ConstructorTranslatableSyncStructTwinNormal({dynamic hint}) =>
      RustLib.instance.api
          .crateApiConstructorConstructorTranslatableSyncStructTwinNormalNew(
              hint: hint);

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructorTranslatableSyncStructTwinNormal &&
          runtimeType == other.runtimeType &&
          one == other.one;
}
