# Package Versioning Strategy Guide

This document explains how the Flutter Template brick keeps packages up to date.

## 🔄 Automatic Updates (Recommended)

The brick includes **Mason hooks** that automatically handle package updates:

### What Happens Automatically:

1. **Pre-Generation** (`hooks/pre_gen.dart`)
   - ✅ Verifies Flutter is installed
   - ✅ Displays project configuration

2. **Post-Generation** (`hooks/post_gen.dart`)
   - ✅ Runs `flutter pub get` to fetch dependencies
   - ❓ Prompts to run `flutter pub upgrade` for latest versions
   - ✅ Provides next steps and setup instructions

### Usage:

```bash
mason make flutter_template
# Follow the prompts, and packages will be automatically updated!
```

## 📦 Versioning Strategies

The template uses **caret syntax (^)** by default. Here are all available strategies:

### 1. Caret Syntax (^) - CURRENT APPROACH ✅

```yaml
dependencies:
  flutter_bloc: ^9.1.1
```

**Behavior:**
- Allows updates that don't break the public API
- `^9.1.1` allows `9.1.2`, `9.9.9` but NOT `10.0.0`
- Follows semantic versioning

**Pros:**
- ✅ Safe updates (no breaking changes)
- ✅ Gets bug fixes and new features automatically
- ✅ Recommended by Dart/Flutter team

**Cons:**
- ⚠️ Might get different versions on different machines
- ⚠️ Need to run `flutter pub upgrade` to get updates

### 2. Any Version

```yaml
dependencies:
  flutter_bloc: any
```

**Behavior:**
- Always uses the absolute latest version

**Pros:**
- ✅ Always up to date

**Cons:**
- ❌ May introduce breaking changes without warning
- ❌ Not recommended for production

### 3. Range Syntax

```yaml
dependencies:
  flutter_bloc: '>=9.1.1 <10.0.0'
```

**Behavior:**
- Explicit version range control

**Pros:**
- ✅ Precise control over acceptable versions
- ✅ Clear upper bounds

**Cons:**
- ⚠️ More verbose
- ⚠️ Requires manual updates when major versions release

### 4. Exact Version

```yaml
dependencies:
  flutter_bloc: 9.1.1
```

**Behavior:**
- Locks to specific version only

**Pros:**
- ✅ Maximum stability
- ✅ Identical builds across all environments

**Cons:**
- ❌ No automatic updates
- ❌ Requires manual version bumps for bug fixes
- ❌ Can miss important security updates

## 🎯 Recommended Workflow

### For Template Maintenance:

1. **Keep caret syntax (^)** in `__brick__/pubspec.yaml`
2. **Let hooks handle updates** when projects are generated
3. **Periodically update template** with new major versions:

```bash
cd __brick__
flutter pub upgrade
# Test the template
# Update brick version in brick.yaml
```

### For Generated Projects:

Users of your brick can update packages anytime:

```bash
# Get latest compatible versions (respects ^)
flutter pub upgrade

# Update to specific version
flutter pub upgrade flutter_bloc

# Show outdated packages
flutter pub outdated
```

## 🔧 Manual Update Method

If you prefer not to use hooks, users can manually update:

```bash
# After generating project
cd my_new_project
flutter pub get          # Fetch dependencies
flutter pub upgrade      # Upgrade to latest compatible
flutter pub outdated     # Check for newer versions
```

## 🛡️ Version Pinning for Production

For production apps, consider:

1. **Use `pubspec.lock`**
   - Commit this file to version control
   - Ensures identical dependencies across team

2. **Regular audits**
   ```bash
   flutter pub outdated
   ```

3. **Test before upgrading**
   ```bash
   flutter pub upgrade --dry-run
   ```

## 📚 Additional Resources

- [Dart Package Versioning](https://dart.dev/tools/pub/dependencies#version-constraints)
- [Semantic Versioning](https://semver.org/)
- [Flutter Packages](https://pub.dev/)
- [Mason Hooks Documentation](https://docs.brickhub.dev/category/hooks)

## 🔄 Hook Customization

To modify the automatic update behavior, edit:

### Disable upgrade prompt:
```dart
// hooks/post_gen.dart
final shouldUpgrade = false; // Always skip
```

### Force upgrade (no prompt):
```dart
// hooks/post_gen.dart
final shouldUpgrade = true; // Always upgrade
// Remove the context.logger.confirm() line
```

### Skip hooks entirely:
```bash
mason make flutter_template --no-hooks
```

## 🎉 Summary

**Current Setup:**
- ✅ Uses caret syntax (^) for flexibility
- ✅ Hooks automatically run `pub get`
- ✅ Optional `pub upgrade` via prompt
- ✅ Best of both worlds: stability + freshness

This ensures generated projects always have the latest compatible packages while maintaining API compatibility! 🚀

