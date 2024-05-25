
        // This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.35.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'package:meta/meta.dart' as meta;
part 'attribute_twin_sync_sse.freezed.dart';

        // The type `IgnoredStructTwinSyncSse` is not used by any `pub` functions, thus it is ignored.


        void handleCustomizedStructTwinSyncSse({required CustomizedTwinSyncSse val , dynamic hint}) => RustLib.instance.api.crateApiPseudoManualAttributeTwinSyncSseHandleCustomizedStructTwinSyncSse(val: val, hint: hint);

UserIdTwinSyncSse nextUserIdTwinSyncSse({UserIdTwinSyncSse userId = const UserIdTwinSyncSse(), dynamic hint}) => RustLib.instance.api.crateApiPseudoManualAttributeTwinSyncSseNextUserIdTwinSyncSse(userId: userId, hint: hint);

        class CustomizedTwinSyncSse  {
                final String finalField;
 String? nonFinalField;

                CustomizedTwinSyncSse({required this.finalField ,this.nonFinalField ,});

                
                

                
        @override
        int get hashCode => finalField.hashCode^nonFinalField.hashCode;
        

                
        @override
        bool operator ==(Object other) =>
            identical(this, other) ||
            other is CustomizedTwinSyncSse &&
                runtimeType == other.runtimeType
                && finalField == other.finalField&& nonFinalField == other.nonFinalField;
        
            }

/// Example for @freezed and @meta.immutable
@freezed
@meta.immutable
class UserIdTwinSyncSse with _$UserIdTwinSyncSse  {
                
                const factory UserIdTwinSyncSse({@Default(0)  int value,}) = _UserIdTwinSyncSse;
                
                
            }
        