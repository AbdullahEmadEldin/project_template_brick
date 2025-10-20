# Flutter Template Brick

A comprehensive Flutter project template with pre-configured:
- 🎨 **Theme Management** - Light/Dark theme support with BLoC
- 🌍 **Localization** - Easy Localization setup with Arabic and English support
- 💾 **State Management** - Hydrated BLoC for persistent state
- 🗄️ **Caching** - Shared Preferences integration
- 🔧 **Environment Variables** - Flutter dotenv configuration

## Installation

### Local Usage

```bash
mason get
```

### Generate a New Project

```bash
mason make flutter_template
```

You'll be prompted for:
- **project_name**: Your project name (e.g., `my_awesome_app`)
- **description**: A short description of your project
- **org_name**: Your organization identifier (e.g., `com.mycompany`)

**✨ Automatic Package Updates**: 
The brick includes hooks that automatically:
- Verify Flutter is installed
- Run `flutter pub get` to fetch dependencies
- Optionally run `flutter pub upgrade` to update all packages to their latest compatible versions

## Post-Generation Steps

### 1. Move MainActivity.kt (Android)

After generation, move the `MainActivity.kt` file to match your package structure:

```bash
cd your_project_name
mkdir -p android/app/src/main/kotlin/[org_path]/[project_name]
mv android/app/src/main/kotlin/MainActivity.kt android/app/src/main/kotlin/[org_path]/[project_name]/
```

For example, if your `org_name` is `com.example` and `project_name` is `my_app`:
```bash
mkdir -p android/app/src/main/kotlin/com/example/my_app
mv android/app/src/main/kotlin/MainActivity.kt android/app/src/main/kotlin/com/example/my_app/
```

### 2. Set Up Environment Variables

```bash
cd your_project_name
cp env_template .env
```

Edit `.env` and add your environment-specific variables.

### 3. Get Dependencies

```bash
flutter pub get
```

### 4. Run the App

```bash
flutter run
```

## Features

### Theme Management

The template includes a theme manager using BLoC that supports:
- Light theme
- Dark theme  
- System theme (follows device settings)

Switch themes programmatically:
```dart
context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
```

### Localization

Supports multiple languages out of the box:
- English (en)
- Arabic (ar)

Translation files are in `assets/translations/`. 

Change language:
```dart
LanguageManager.changeAppLang(context, lang: LanguageType.arabic);
```

Use translations:
```dart
Text('hello'.tr())
```

### State Management

Uses Hydrated BLoC for persistent state across app restarts:
```dart
class MyCubit extends HydratedCubit<MyState> {
  MyCubit() : super(MyState.initial());
  
  @override
  MyState? fromJson(Map<String, dynamic> json) => MyState.fromJson(json);
  
  @override
  Map<String, dynamic>? toJson(MyState state) => state.toJson();
}
```

### Caching

Simple caching with Shared Preferences:
```dart
await CacheHelper.saveData(key: 'user_token', value: token);
final token = CacheHelper.getData(key: 'user_token');
```

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── app_entry.dart           # MaterialApp configuration
└── core/
    ├── helpers/             # Extension methods and utilities
    ├── services/            # Cache and other services
    └── theme/              # Theme and language management
```

## Dependencies

- `flutter_bloc` & `hydrated_bloc` - State management
- `easy_localization` - Internationalization
- `shared_preferences` - Local storage
- `path_provider` - File system paths
- `flutter_dotenv` - Environment variables

## Customization

### Add New Language

1. Create translation file: `assets/translations/[locale].json`
2. Add locale to `main.dart`:
```dart
supportedLocales: [
  Locale('en'),
  Locale('ar'),
  Locale('fr'), // New language
],
```

### Customize Theme

Edit theme files in `lib/core/theme/`:
- `app_themes.dart` - Light and dark theme definitions
- `app_colors.dart` - Color palette
- `app_text_styles.dart` - Typography

## License

This template is provided as-is for project scaffolding.

