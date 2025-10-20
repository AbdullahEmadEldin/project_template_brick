/// Helper script to update pubspec.yaml with latest package versions
/// 
/// This file provides documentation on package versioning strategies.
/// 
/// Mason Hooks automatically run `flutter pub get` and optionally 
/// `flutter pub upgrade` after project generation.

// Versioning Strategies:
// 
// 1. CARET SYNTAX (^) - RECOMMENDED (Current approach)
//    Example: ^1.0.0
//    - Allows updates that don't break the public API
//    - Gets latest compatible version (e.g., ^1.0.0 allows 1.0.1, 1.9.9 but not 2.0.0)
// 
// 2. ANY VERSION
//    Example: any
//    - Always gets the latest version
//    - Risk: May introduce breaking changes
//    - Not recommended for production
// 
// 3. RANGE SYNTAX
//    Example: '>=1.0.0 <2.0.0'
//    - Explicit version ranges
//    - More control but more maintenance
// 
// 4. EXACT VERSION
//    Example: 1.0.0
//    - Locks to specific version
//    - Most stable but requires manual updates

// The post_gen.dart hook automatically:
// - Runs `flutter pub get` to fetch dependencies
// - Optionally runs `flutter pub upgrade` to get latest compatible versions
// - This ensures packages are up-to-date when project is generated

