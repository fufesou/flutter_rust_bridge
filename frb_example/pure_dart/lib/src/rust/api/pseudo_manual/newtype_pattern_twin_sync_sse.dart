// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.14.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

NewTypeIntTwinSyncSse handleNewtypeTwinSyncSse(
        {required NewTypeIntTwinSyncSse arg, dynamic hint}) =>
    RustLib.instance.api.handleNewtypeTwinSyncSse(arg: arg, hint: hint);

class NewTypeIntTwinSyncSse {
  final int field0;

  const NewTypeIntTwinSyncSse({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewTypeIntTwinSyncSse &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}
