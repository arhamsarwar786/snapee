import 'package:supabase/supabase.dart';

class Credential {
  static String url = 'https://yxycwgztpyyvmzrapwio.supabase.co';

  static String apiKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTY0MjAwNjEzMywiZXhwIjoxOTU3NTgyMTMzfQ.9InBpfpn6xk2ecfDNm3hf47-JcPtwlQjWeW9L5Eom4Q';
  static SupabaseClient client = SupabaseClient(url, apiKey);
}
