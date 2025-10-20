# Quick Start Guide

## Testing Your Brick Locally

### 1. Get Mason Dependencies

```bash
cd /Users/abdullahemad/FlutterDev/PROJECTS/project_brick
mason get
```

### 2. Generate a New Project

```bash
# Navigate to where you want to create your new project
cd /Users/abdullahemad/FlutterDev/PROJECTS/

# Generate the project
mason make flutter_template
```

You'll be prompted for:
- **project_name**: e.g., `my_awesome_app`
- **description**: e.g., `My awesome Flutter application`
- **org_name**: e.g., `com.mycompany`

**🎯 Automatic Setup:**
The brick automatically:
- ✅ Verifies Flutter is installed
- ✅ Runs `flutter pub get` to fetch dependencies
- ✅ Optionally upgrades packages to latest versions (you'll be prompted)

**Skip hooks** (if needed):
```bash
mason make flutter_template --no-hooks
```

### 3. Post-Generation Setup

After the project is generated, navigate into it:

```bash
cd my_awesome_app

# Move MainActivity to correct package structure (replace paths as needed)
mkdir -p android/app/src/main/kotlin/com/mycompany/my_awesome_app
mv android/app/src/main/kotlin/MainActivity.kt android/app/src/main/kotlin/com/mycompany/my_awesome_app/

# Set up environment file
cp env_template .env

# Dependencies are already fetched by hooks!
# If you skipped hooks, run:
# flutter pub get

# Run the app
flutter run
```

**📦 Updating Packages Later:**

```bash
# Upgrade to latest compatible versions
flutter pub upgrade

# Check for outdated packages
flutter pub outdated
```

## What's Included

✅ **Theme Management**: Light/Dark/System theme with BLoC
✅ **Localization**: English and Arabic translations ready
✅ **State Management**: Hydrated BLoC for persistent state
✅ **Caching**: Shared Preferences wrapper
✅ **Environment Variables**: .env configuration
✅ **Clean Architecture**: Organized folder structure

## Testing the Features

Once the app runs, you'll see buttons to:
- Switch between Light/Dark/System themes
- Change language between English and Arabic
- All state is persisted across app restarts

## Customizing the Brick

To modify the brick template:
1. Edit files in `__brick__/` directory
2. Use Mustache syntax `{{variable_name}}` for dynamic content
3. Update `brick.yaml` to add/modify variables
4. Test with `mason make flutter_template`

## Publishing Your Brick

### To BrickHub
```bash
mason login
mason publish
```

### To Git Repository
```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin YOUR_REPO_URL
git push -u origin main
```

Then others can use it:
```yaml
# mason.yaml
bricks:
  flutter_template:
    git:
      url: YOUR_REPO_URL
```

## Troubleshooting

### MainActivity.kt package mismatch
If you get a package error, ensure MainActivity.kt is in the correct directory matching your `org_name` and `project_name`.

### Translation files not found
Make sure to run `flutter pub get` after generation to properly set up easy_localization.

### Build errors
Run `flutter clean && flutter pub get` to refresh dependencies.

## Support

For issues or questions about Mason bricks, visit:
- [Mason Documentation](https://docs.brickhub.dev)
- [Mason GitHub](https://github.com/felangel/mason)

