// ignore_for_file: invalid_use_of_internal_member

        import '../frb_generated.dart';

        Future<void> firstFunction({ dynamic hint }) => Rust.instance.dispatcher.simpleAdder(, hint: hint);

        
        