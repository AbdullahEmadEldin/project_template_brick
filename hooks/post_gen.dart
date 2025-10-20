import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  final progress = context.logger.progress('Getting Flutter dependencies');

  try {
    // Run flutter pub get to fetch dependencies
    final pubGetResult = await Process.run(
      'flutter',
      ['pub', 'get'],
      workingDirectory: Directory.current.path,
      runInShell: true,
    );

    if (pubGetResult.exitCode != 0) {
      progress.fail('Failed to get dependencies');
      context.logger.err(pubGetResult.stderr.toString());
      return;
    }

    progress.complete('Dependencies fetched successfully');

    // Ask user if they want to upgrade to latest versions
    final shouldUpgrade = context.logger.confirm(
      '📦 Do you want to upgrade all packages to their latest versions?',
      defaultValue: true,
    );

    if (shouldUpgrade) {
      final upgradeProgress =
          context.logger.progress('Upgrading packages to latest versions');

      final pubUpgradeResult = await Process.run(
        'flutter',
        ['pub', 'upgrade'],
        workingDirectory: Directory.current.path,
        runInShell: true,
      );

      if (pubUpgradeResult.exitCode != 0) {
        upgradeProgress.fail('Failed to upgrade packages');
        context.logger.err(pubUpgradeResult.stderr.toString());
        return;
      }

      upgradeProgress.complete('✅ All packages upgraded to latest versions!');
    }

    // Additional setup instructions
    context.logger
      ..info('')
      ..info('🎉 Project generated successfully!')
      ..info('')
      ..info('📝 Next steps:')
      ..info('  1. Move MainActivity.kt to the correct package directory:')
      ..info(
          '     mkdir -p android/app/src/main/kotlin/${context.vars['org_name'].toString().replaceAll('.', '/')}/${context.vars['project_name']}')
      ..info(
          '     mv android/app/src/main/kotlin/MainActivity.kt android/app/src/main/kotlin/${context.vars['org_name'].toString().replaceAll('.', '/')}/${context.vars['project_name']}/')
      ..info('')
      ..info('  2. Set up environment variables:')
      ..info('     cp env_template .env')
      ..info('')
      ..info('  3. Run your app:')
      ..info('     flutter run')
      ..info('');
  } catch (e) {
    progress.fail('Error during setup');
    context.logger.err(e.toString());
  }
}
