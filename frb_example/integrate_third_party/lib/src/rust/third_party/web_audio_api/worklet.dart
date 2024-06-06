// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored because they are not marked as `pub`: `load`, `new`
// These functions are ignored because they have generic arguments: `new`, `process`
// These types are ignored because they are not used by any `pub` functions: `AudioParamValues`, `AudioWorkletNodeOptions`, `AudioWorkletRenderer`, `Processor`
// These functions are ignored: `constructor`, `onmessage`, `parameter_descriptors`, `port`

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioWorkletNode>>
abstract class AudioWorkletNode {
  /// Represents an integer used to determine how many channels are used when up-mixing and
  /// down-mixing connections to any inputs to the node.
  Future<BigInt> channelCount();

  /// Represents an enumerated value describing the way channels must be matched between the
  /// node's inputs and outputs.
  Future<ChannelCountMode> channelCountMode();

  /// Represents an enumerated value describing the meaning of the channels. This interpretation
  /// will define how audio up-mixing and down-mixing will happen.
  Future<ChannelInterpretation> channelInterpretation();

  /// Unset the callback to run when an unhandled exception occurs in the audio processor.
  Future<void> clearOnprocessorerror();

  /// The [`BaseAudioContext`](crate::context::BaseAudioContext) concrete type which owns this
  /// AudioNode.
  Future<void> context();

  /// Disconnects all outgoing connections from the AudioNode.
  Future<void> disconnect();

  /// Disconnects all outgoing connections at the given output port from the AudioNode.
  ///
  /// # Panics
  ///
  /// This function will panic when
  /// - if the output port is out of bounds for this node
  Future<void> disconnectOutput({required BigInt output});

  /// Update the `channel_count` attribute
  Future<void> setChannelCount({required BigInt v});

  /// Update the `channel_count_mode` attribute
  Future<void> setChannelCountMode({required ChannelCountMode v});

  /// Update the `channel_interpretation` attribute
  Future<void> setChannelInterpretation({required ChannelInterpretation v});

  Future<void> channelConfig();

  Future<BigInt> numberOfInputs();

  Future<BigInt> numberOfOutputs();

  /// Collection of AudioParam objects with associated names of this node
  ///
  /// This map is populated from a list of [`AudioParamDescriptor`]s in the
  /// [`AudioWorkletProcessor`] class constructor at the instantiation.
  Future<void> parameters();

  Future<void> registration();

  void dispose();

  bool get isDisposed;
}
