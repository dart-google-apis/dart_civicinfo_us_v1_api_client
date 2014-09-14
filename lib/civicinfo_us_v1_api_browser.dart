library civicinfo_us_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_civicinfo_us_v1_api/src/browser_client.dart';
import "package:google_civicinfo_us_v1_api/civicinfo_us_v1_api_client.dart";

/** An API for accessing civic information. */
@deprecated
class Civicinfo extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Civicinfo([oauth.OAuth2 this.auth]);
}
