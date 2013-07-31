part of civicinfo_us_v1_api;

class ElectionsResource_ {

  final Client _client;

  ElectionsResource_(Client client) :
      _client = client;

  /**
   * List of available elections to query.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ElectionsQueryResponse> electionQuery({core.Map optParams}) {
    var url = "elections";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ElectionsQueryResponse.fromJson(data));
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
  async.Future<VoterInfoResponse> voterInfoQuery(VoterInfoRequest request, core.int electionId, {core.bool officialOnly, core.Map optParams}) {
    var url = "voterinfo/{electionId}/lookup";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new VoterInfoResponse.fromJson(data));
  }
}

