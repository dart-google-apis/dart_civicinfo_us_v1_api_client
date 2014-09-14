library civicinfo_us_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_civicinfo_us_v1_api/src/console_client.dart';

import "package:google_civicinfo_us_v1_api/civicinfo_us_v1_api_client.dart";

/** An API for accessing civic information. */
@deprecated
class Civicinfo extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Civicinfo([oauth2.OAuth2Console this.auth]);
}
