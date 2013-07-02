part of civicinfo_us_v1_api_client;

class ElectionsResource_ extends Resource {

  ElectionsResource_(Client client) : super(client) {
  }

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

class RepresentativesResource_ extends Resource {

  RepresentativesResource_(Client client) : super(client) {
  }

  /**
   * Looks up political geography and (optionally) representative information based on an address.
   *
   * [request] - RepresentativeInfoRequest to send in this request
   *
   * [includeOffices] - Whether to return information about offices and officials. If false, only the top-level district information will be returned.
   *   Default: true
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RepresentativeInfoResponse> representativeInfoQuery(RepresentativeInfoRequest request, {core.bool includeOffices, core.Map optParams}) {
    var url = "representatives/lookup";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (includeOffices != null) queryParams["includeOffices"] = includeOffices;
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
      .then((data) => new RepresentativeInfoResponse.fromJson(data));
  }
}

