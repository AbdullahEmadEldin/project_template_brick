import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'app_entry.dart';
import 'core/services/cache.dart';
import 'core/theme/lang_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  // ErrorWidget.builder =
  // (errorDetails) => UnhandledErrorWidget(errorDetails: errorDetails);

  /// configure env variables.
  await dotenv.load(fileName: ".env");

  /// Init shared preferences
  await CacheHelper.init();

  /// EasyLocalization Initialization.
  await EasyLocalization.ensureInitialized();

  /// Get App Lang from cache.
  final String startLocale = await LanguageManager.getAppLang();
  runApp(
    EasyLocalization(
      startLocale: Locale(startLocale),
      supportedLocales: [
        Locale(LanguageType.english.code),
        Locale(LanguageType.arabic.code),
      ],
      path: AppConstants.translationsPath,
      fallbackLocale: const Locale('en'),
      child: const AppEntry(),
    ),
  );
}
