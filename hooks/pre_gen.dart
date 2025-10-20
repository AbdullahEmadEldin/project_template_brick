import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  final logger = context.logger;

  // Check if Flutter is installed
  try {
    final result = await Process.run(
      'flutter',
      ['--version'],
      runInShell: true,
    );

    if (result.exitCode == 0) {
      logger.info('✅ Flutter detected');
    }
  } catch (e) {
    logger.err('❌ Flutter is not installed or not in PATH');
    logger.warn(
        'Please install Flutter: https://flutter.dev/docs/get-started/install');
    exit(1);
  }

  // Display project info
  logger
    ..info('')
    ..info('🧱 Creating Flutter project with:')
    ..info('   📦 Name: ${context.vars['project_name']}')
    ..info('   📝 Description: ${context.vars['description']}')
    ..info('   🏢 Organization: ${context.vars['org_name']}')
    ..info('');
}
