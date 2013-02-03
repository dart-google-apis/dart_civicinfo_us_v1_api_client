part of civicinfo_us_v1_api_client;

class ElectionsResource extends Resource {

  ElectionsResource(Client client) : super(client) {
  }

  /**
   * List of available elections to query.
   *
   * [optParams] - Additional query parameters
   */
  Future<ElectionsQueryResponse> electionQuery({Map optParams}) {
    var completer = new Completer();
    var url = "elections";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ElectionsQueryResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Looks up information relevant to a voter based on the voter's registered address.
   *
   * [request] - VoterInfoRequest to send in this request
   *
   * [electionId] - The unique ID of the election to look up. A list of election IDs can be obtained at.https://www.googleapis.com/civicinfo/{version}/elections
   *
   * [officialOnly] - If set to true, only data from official state sources will be returned.
   *   Default: false
   *
   * [optParams] - Additional query parameters
   */
  Future<VoterInfoResponse> voterInfoQuery(VoterInfoRequest request, String electionId, {bool officialOnly, Map optParams}) {
    var completer = new Completer();
    var url = "voterinfo/{electionId}/lookup";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (electionId == null) paramErrors.add("electionId is required");
    if (electionId != null) urlParams["electionId"] = electionId;
    if (officialOnly != null) queryParams["officialOnly"] = officialOnly;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new VoterInfoResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

