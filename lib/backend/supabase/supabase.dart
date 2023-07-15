import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://xfsdduqlthotsybmidrd.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inhmc2RkdXFsdGhvdHN5Ym1pZHJkIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODMzOTY0NzYsImV4cCI6MTk5ODk3MjQ3Nn0.mzPAdGA40yZh-qwy6ZgqagGTfyZ2pM7h3UUay9msNjE';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
