import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:outfithub/route/routenav.dart';
import 'package:outfithub/theme/mytheme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: "keysapi.env");
  await Supabase.initialize(
    url: dotenv.get("URLSUPABASE"),
    anonKey: dotenv.get("ANONKEYSUPABASE"),
  );

  WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: Mytheme().lightTheme,
      routerConfig: routerNav,
    );
  }
}
