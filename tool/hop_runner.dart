library hop_runner;

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main() {

  List pathList = [
    'lib/civicinfo_us_v1_api_browser.dart',
    'lib/civicinfo_us_v1_api_console.dart',
    'lib/civicinfo_us_v1_api_client.dart'
  ];

  addTask('docs', createDartDocTask(pathList, linkApi: true));

  addTask('analyze', createAnalyzerTask(pathList));

  runHop();
}