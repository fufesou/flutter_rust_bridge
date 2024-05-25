// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.35.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../auxiliary/sample_types.dart';
import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'misc_example_twin_sync.freezed.dart';

// The type `MySizeFreezedTwinSync` is not used by any `pub` functions, thus it is ignored.

MyTreeNodeTwinSync handleComplexStructTwinSync(
        {required MyTreeNodeTwinSync s, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncHandleComplexStructTwinSync(
            s: s, hint: hint);

List<WeekdaysTwinSync> listOfPrimitiveEnumsTwinSync(
        {required List<WeekdaysTwinSync> weekdays, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncListOfPrimitiveEnumsTwinSync(
            weekdays: weekdays, hint: hint);

MyNestedStructTwinSync handleNestedStructTwinSync(
        {required MyNestedStructTwinSync s, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncHandleNestedStructTwinSync(
            s: s, hint: hint);

BigBuffersTwinSync handleBigBuffersTwinSync({dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncHandleBigBuffersTwinSync(
            hint: hint);

AbcTwinSync testAbcEnumTwinSync({required AbcTwinSync abc, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncTestAbcEnumTwinSync(
            abc: abc, hint: hint);

StructWithEnumTwinSync testStructWithEnumTwinSync(
        {required StructWithEnumTwinSync se, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncTestStructWithEnumTwinSync(
            se: se, hint: hint);

String handleStringTwinSync({required String s, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncHandleStringTwinSync(
            s: s, hint: hint);

String handleCharTwinSync({required String arg, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncHandleCharTwinSync(
            arg: arg, hint: hint);

Uint8List handleVecU8TwinSync({required List<int> v, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncHandleVecU8TwinSync(
            v: v, hint: hint);

MySize handleStructTwinSync(
        {required MySize arg, required MySize boxed, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscExampleTwinSyncHandleStructTwinSync(
            arg: arg, boxed: boxed, hint: hint);

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<ItemContainerSolutionOneTwinSync>>
@sealed
class ItemContainerSolutionOneTwinSync extends RustOpaque {
  ItemContainerSolutionOneTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  ItemContainerSolutionOneTwinSync.sseDecode(
      BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_ItemContainerSolutionOneTwinSync,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_ItemContainerSolutionOneTwinSync,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_ItemContainerSolutionOneTwinSyncPtr,
  );

  static ItemContainerSolutionOneTwinSync createTwinSync({dynamic hint}) => RustLib
      .instance.api
      .crateApiPseudoManualMiscExampleTwinSyncItemContainerSolutionOneTwinSyncCreateTwinSync(
          hint: hint);

  Int32List getItemContentsTwinSync({dynamic hint}) => RustLib.instance.api
      .crateApiPseudoManualMiscExampleTwinSyncItemContainerSolutionOneTwinSyncGetItemContentsTwinSync(
          that: this, hint: hint);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<OpaqueItemTwinSync>>
@sealed
class OpaqueItemTwinSync extends RustOpaque {
  OpaqueItemTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  OpaqueItemTwinSync.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_OpaqueItemTwinSync,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_OpaqueItemTwinSync,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_OpaqueItemTwinSyncPtr,
  );
}

class ATwinSync {
  final String a;

  const ATwinSync({
    required this.a,
  });

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ATwinSync && runtimeType == other.runtimeType && a == other.a;
}

@freezed
sealed class AbcTwinSync with _$AbcTwinSync {
  const AbcTwinSync._();

  const factory AbcTwinSync.a(
    ATwinSync field0,
  ) = AbcTwinSync_A;
  const factory AbcTwinSync.b(
    BTwinSync field0,
  ) = AbcTwinSync_B;
  const factory AbcTwinSync.c(
    CTwinSync field0,
  ) = AbcTwinSync_C;
  const factory AbcTwinSync.justInt(
    int field0,
  ) = AbcTwinSync_JustInt;
}

class BTwinSync {
  final int b;

  const BTwinSync({
    required this.b,
  });

  @override
  int get hashCode => b.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BTwinSync && runtimeType == other.runtimeType && b == other.b;
}

class BigBuffersTwinSync {
  final Int64List int64;
  final Uint64List uint64;

  const BigBuffersTwinSync({
    required this.int64,
    required this.uint64,
  });

  @override
  int get hashCode => int64.hashCode ^ uint64.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BigBuffersTwinSync &&
          runtimeType == other.runtimeType &&
          int64 == other.int64 &&
          uint64 == other.uint64;
}

class CTwinSync {
  final bool c;

  const CTwinSync({
    required this.c,
  });

  @override
  int get hashCode => c.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CTwinSync && runtimeType == other.runtimeType && c == other.c;
}

class ItemContainerSolutionTwoTwinSync {
  String name;
  final List<OpaqueItemTwinSync> items;

  ItemContainerSolutionTwoTwinSync({
    required this.name,
    required this.items,
  });

  static ItemContainerSolutionTwoTwinSync createTwinSync({dynamic hint}) => RustLib
      .instance.api
      .crateApiPseudoManualMiscExampleTwinSyncItemContainerSolutionTwoTwinSyncCreateTwinSync(
          hint: hint);

  Int32List getItemContentsTwinSync({dynamic hint}) => RustLib.instance.api
      .crateApiPseudoManualMiscExampleTwinSyncItemContainerSolutionTwoTwinSyncGetItemContentsTwinSync(
          that: this, hint: hint);

  @override
  int get hashCode => name.hashCode ^ items.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemContainerSolutionTwoTwinSync &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          items == other.items;
}

class MyNestedStructTwinSync {
  final MyTreeNodeTwinSync treeNode;
  final WeekdaysTwinSync weekday;

  const MyNestedStructTwinSync({
    required this.treeNode,
    required this.weekday,
  });

  @override
  int get hashCode => treeNode.hashCode ^ weekday.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyNestedStructTwinSync &&
          runtimeType == other.runtimeType &&
          treeNode == other.treeNode &&
          weekday == other.weekday;
}

class MyTreeNodeTwinSync {
  final int valueI32;
  final Uint8List valueVecU8;
  final bool valueBoolean;
  final List<MyTreeNodeTwinSync> children;

  const MyTreeNodeTwinSync({
    required this.valueI32,
    required this.valueVecU8,
    required this.valueBoolean,
    required this.children,
  });

  @override
  int get hashCode =>
      valueI32.hashCode ^
      valueVecU8.hashCode ^
      valueBoolean.hashCode ^
      children.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyTreeNodeTwinSync &&
          runtimeType == other.runtimeType &&
          valueI32 == other.valueI32 &&
          valueVecU8 == other.valueVecU8 &&
          valueBoolean == other.valueBoolean &&
          children == other.children;
}

class StructWithEnumTwinSync {
  final AbcTwinSync abc1;
  final AbcTwinSync abc2;

  const StructWithEnumTwinSync({
    required this.abc1,
    required this.abc2,
  });

  @override
  int get hashCode => abc1.hashCode ^ abc2.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithEnumTwinSync &&
          runtimeType == other.runtimeType &&
          abc1 == other.abc1 &&
          abc2 == other.abc2;
}

enum WeekdaysTwinSync {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
  ;
}
