# Changelog

All notable changes to the Flutter Template brick will be documented in this file.

## [1.1.0] - 2025-10-20

### Added
- 🎣 **Mason Hooks** for automated setup
  - `pre_gen.dart`: Verifies Flutter installation before generation
  - `post_gen.dart`: Automatically runs `flutter pub get` and optional `flutter pub upgrade`
- 📦 Automatic package updates on project generation
- 📚 Comprehensive package versioning documentation (`PACKAGE_VERSIONING.md`)
- ✨ Interactive prompts for package upgrades
- 📋 Post-generation instructions displayed automatically

### Changed
- 🔄 Improved imports: Changed from absolute to relative imports
- 📝 Updated documentation with hook information
- ✅ Enhanced user experience with automatic dependency management

## [1.0.0] - 2025-10-20

### Added
- Initial release of Flutter template brick
- Theme management with light/dark mode support using BLoC
- Localization setup with easy_localization (English and Arabic)
- Hydrated BLoC for persistent state management
- Shared Preferences integration for caching
- Flutter dotenv for environment variables
- Pre-configured project structure with core utilities
- Customizable project name, description, and organization identifier
- Cross-platform support (iOS, Android, Web, Linux, macOS, Windows)

### Features
- `ThemeCubit` for managing app theme modes
- `LanguageManager` for handling localization
- `CacheHelper` for simple key-value storage
- Extension methods for common operations
- Predefined color schemes and text styles
- Sample home screen with theme and language switching

