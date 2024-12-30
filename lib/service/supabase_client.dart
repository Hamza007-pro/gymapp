import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseClient {
  static SupabaseClient? _instance;
  final client = Supabase.instance.client;

  SupabaseClient._();

  static SupabaseClient get instance {
    _instance ??= SupabaseClient._();
    return _instance!;
  }
}