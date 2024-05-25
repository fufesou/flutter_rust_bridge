
        // This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.35.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'exception_twin_sse.freezed.dart';

        

        Future<int> funcReturnErrorTwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseFuncReturnErrorTwinSse(hint: hint);

Future<int> funcTypeFalliblePanicTwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseFuncTypeFalliblePanicTwinSse(hint: hint);

Future<int> funcTypeInfalliblePanicTwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseFuncTypeInfalliblePanicTwinSse(hint: hint);

Future<int> customEnumErrorReturnOkTwinSse({required int arg , dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseCustomEnumErrorReturnOkTwinSse(arg: arg, hint: hint);

Future<void> customEnumErrorPanicTwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseCustomEnumErrorPanicTwinSse(hint: hint);

Future<int> customEnumErrorReturnErrorTwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseCustomEnumErrorReturnErrorTwinSse(hint: hint);

Future<void> customNestedErrorReturnErrorTwinSse({required CustomNestedErrorOuterTwinSse arg , dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseCustomNestedErrorReturnErrorTwinSse(arg: arg, hint: hint);

Future<void> customStructErrorReturnErrorTwinSse({required CustomStructErrorTwinSse arg , dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseCustomStructErrorReturnErrorTwinSse(arg: arg, hint: hint);

Future<int> returnErrCustomErrorTwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseReturnErrCustomErrorTwinSse(hint: hint);

Future<int> returnOkCustomErrorTwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseReturnOkCustomErrorTwinSse(hint: hint);

Future<int> returnErrorVariantTwinSse({required int variant , dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseReturnErrorVariantTwinSse(variant: variant, hint: hint);

Future<void> returnCustomNestedError1TwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseReturnCustomNestedError1TwinSse(hint: hint);

Future<void> returnCustomNestedError1Variant1TwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseReturnCustomNestedError1Variant1TwinSse(hint: hint);

Future<void> returnCustomNestedError2TwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseReturnCustomNestedError2TwinSse(hint: hint);

Future<void> returnCustomStructErrorTwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseReturnCustomStructErrorTwinSse(hint: hint);

Future<int> returnCustomStructOkTwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseReturnCustomStructOkTwinSse(hint: hint);

Future<void> throwAnyhowTwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseThrowAnyhowTwinSse(hint: hint);

Future<void> panicWithCustomResultTwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSsePanicWithCustomResultTwinSse(hint: hint);

Future<Stream<String>> streamSinkThrowAnyhowTwinSse({dynamic hint}) => RustLib.instance.api.crateApiPseudoManualExceptionTwinSseStreamSinkThrowAnyhowTwinSse(hint: hint);

        @freezed
                sealed class CustomEnumErrorTwinSse with _$CustomEnumErrorTwinSse implements FrbException {
                    const CustomEnumErrorTwinSse._();

                    @Implements<FrbBacktracedException>() const factory CustomEnumErrorTwinSse.one({   required String message ,  required String backtrace , }) = CustomEnumErrorTwinSse_One;
@Implements<FrbBacktracedException>() const factory CustomEnumErrorTwinSse.two({   required int message ,  required String backtrace , }) = CustomEnumErrorTwinSse_Two;

                    
                }

@freezed
                sealed class CustomErrorTwinSse with _$CustomErrorTwinSse implements FrbException {
                    const CustomErrorTwinSse._();

                    @Implements<FrbBacktracedException>() const factory CustomErrorTwinSse.error0({   required String e ,  required String backtrace , }) = CustomErrorTwinSse_Error0;
@Implements<FrbBacktracedException>() const factory CustomErrorTwinSse.error1({   required int e ,  required String backtrace , }) = CustomErrorTwinSse_Error1;

                    
                }

@freezed
                sealed class CustomNestedError1TwinSse with _$CustomNestedError1TwinSse implements FrbException {
                    const CustomNestedError1TwinSse._();

                     const factory CustomNestedError1TwinSse.customNested1(  String field0,) = CustomNestedError1TwinSse_CustomNested1;
 const factory CustomNestedError1TwinSse.errorNested(  CustomNestedError2TwinSse field0,) = CustomNestedError1TwinSse_ErrorNested;

                    
                }

@freezed
                sealed class CustomNestedError2TwinSse with _$CustomNestedError2TwinSse  {
                    const CustomNestedError2TwinSse._();

                     const factory CustomNestedError2TwinSse.customNested2(  String field0,) = CustomNestedError2TwinSse_CustomNested2;
 const factory CustomNestedError2TwinSse.customNested2Number(  int field0,) = CustomNestedError2TwinSse_CustomNested2Number;

                    
                }

@freezed
                sealed class CustomNestedErrorInnerTwinSse with _$CustomNestedErrorInnerTwinSse  {
                    const CustomNestedErrorInnerTwinSse._();

                     const factory CustomNestedErrorInnerTwinSse.three(  String field0,) = CustomNestedErrorInnerTwinSse_Three;
 const factory CustomNestedErrorInnerTwinSse.four(  int field0,) = CustomNestedErrorInnerTwinSse_Four;

                    
                }

@freezed
                sealed class CustomNestedErrorOuterTwinSse with _$CustomNestedErrorOuterTwinSse  {
                    const CustomNestedErrorOuterTwinSse._();

                     const factory CustomNestedErrorOuterTwinSse.one(  String field0,) = CustomNestedErrorOuterTwinSse_One;
 const factory CustomNestedErrorOuterTwinSse.two(  CustomNestedErrorInnerTwinSse field0,) = CustomNestedErrorOuterTwinSse_Two;

                    
                }

class CustomStructErrorAnotherTwinSse implements FrbException {
                final String message;

                const CustomStructErrorAnotherTwinSse({required this.message ,});

                
                

                
        @override
        int get hashCode => message.hashCode;
        

                
        @override
        bool operator ==(Object other) =>
            identical(this, other) ||
            other is CustomStructErrorAnotherTwinSse &&
                runtimeType == other.runtimeType
                && message == other.message;
        
            }

class CustomStructErrorTwinSse  {
                final String a;

                const CustomStructErrorTwinSse({required this.a ,});

                
                

                
        @override
        int get hashCode => a.hashCode;
        

                
        @override
        bool operator ==(Object other) =>
            identical(this, other) ||
            other is CustomStructErrorTwinSse &&
                runtimeType == other.runtimeType
                && a == other.a;
        
            }

class CustomStructTwinSse  {
                final String message;

                const CustomStructTwinSse({required this.message ,});

                static Future<CustomStructTwinSse>  newTwinSse({ required String message ,dynamic hint })=>RustLib.instance.api.crateApiPseudoManualExceptionTwinSseCustomStructTwinSseNewTwinSse(message: message, hint: hint);


 Future<void>  nonstaticReturnCustomStructErrorTwinSse({ dynamic hint })=>RustLib.instance.api.crateApiPseudoManualExceptionTwinSseCustomStructTwinSseNonstaticReturnCustomStructErrorTwinSse(that: this, hint: hint);


 Future<int>  nonstaticReturnCustomStructOkTwinSse({ dynamic hint })=>RustLib.instance.api.crateApiPseudoManualExceptionTwinSseCustomStructTwinSseNonstaticReturnCustomStructOkTwinSse(that: this, hint: hint);


static Future<void>  staticReturnCustomStructErrorTwinSse({ dynamic hint })=>RustLib.instance.api.crateApiPseudoManualExceptionTwinSseCustomStructTwinSseStaticReturnCustomStructErrorTwinSse(hint: hint);


static Future<int>  staticReturnCustomStructOkTwinSse({ dynamic hint })=>RustLib.instance.api.crateApiPseudoManualExceptionTwinSseCustomStructTwinSseStaticReturnCustomStructOkTwinSse(hint: hint);


                

                
        @override
        int get hashCode => message.hashCode;
        

                
        @override
        bool operator ==(Object other) =>
            identical(this, other) ||
            other is CustomStructTwinSse &&
                runtimeType == other.runtimeType
                && message == other.message;
        
            }

class SomeStructTwinSse  {
                final int value;

                const SomeStructTwinSse({required this.value ,});

                static Future<SomeStructTwinSse>  newTwinSse({ required int value ,dynamic hint })=>RustLib.instance.api.crateApiPseudoManualExceptionTwinSseSomeStructTwinSseNewTwinSse(value: value, hint: hint);


 Future<int>  nonStaticReturnErrCustomErrorTwinSse({ dynamic hint })=>RustLib.instance.api.crateApiPseudoManualExceptionTwinSseSomeStructTwinSseNonStaticReturnErrCustomErrorTwinSse(that: this, hint: hint);


 Future<int>  nonStaticReturnOkCustomErrorTwinSse({ dynamic hint })=>RustLib.instance.api.crateApiPseudoManualExceptionTwinSseSomeStructTwinSseNonStaticReturnOkCustomErrorTwinSse(that: this, hint: hint);


static Future<int>  staticReturnErrCustomErrorTwinSse({ dynamic hint })=>RustLib.instance.api.crateApiPseudoManualExceptionTwinSseSomeStructTwinSseStaticReturnErrCustomErrorTwinSse(hint: hint);


static Future<int>  staticReturnOkCustomErrorTwinSse({ dynamic hint })=>RustLib.instance.api.crateApiPseudoManualExceptionTwinSseSomeStructTwinSseStaticReturnOkCustomErrorTwinSse(hint: hint);


                

                
        @override
        int get hashCode => value.hashCode;
        

                
        @override
        bool operator ==(Object other) =>
            identical(this, other) ||
            other is SomeStructTwinSse &&
                runtimeType == other.runtimeType
                && value == other.value;
        
            }
        