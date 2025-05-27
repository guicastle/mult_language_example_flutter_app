import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mult_language_example_flutter_app/l10n/l10n.dart';

// flutter gen-l10n
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class LocaleProvider {
  final _controller = StreamController<Locale>.broadcast();

  Stream<Locale> get stream => _controller.stream;

  void changeLocale(Locale locale) {
    _controller.sink.add(locale);
  }

  void dispose() => _controller.close();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final localeProvider = LocaleProvider();
  Locale _locale = L10n.all.first;

  @override
  void initState() {
    super.initState();
    localeProvider.stream.listen((locale) {
      setState(() => _locale = locale);
    });
  }

  @override
  void dispose() {
    localeProvider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Locale>(
      stream: localeProvider.stream,
      initialData: _locale,
      builder: (context, snapshot) {
        return MaterialApp(
          locale: snapshot.data,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: HomeScreen(localeProvider: localeProvider),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  final LocaleProvider localeProvider;

  const HomeScreen({super.key, required this.localeProvider});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(localizations.language)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(localizations.hello),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  L10n.all.map((locale) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ElevatedButton(
                        onPressed: () => localeProvider.changeLocale(locale),
                        child: Text(locale.languageCode.toUpperCase()),
                      ),
                    );
                  }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
