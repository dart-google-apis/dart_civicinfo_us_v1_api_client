part of civicinfo_us_v1_api_client;

/** Describes information about a regional election administrative area. */
class AdministrationRegion {

  /** The election administration body for this area. */
  AdministrativeBody electionAdministrationBody;

  /** An ID for this object. IDs may change in future requests and should not be cached. Access to this field requires special access that can be requested from the Request more link on the Quotas page. */
  String id;

  /** The city or county that provides election information for this voter. This object can have the same elements as state. */
  AdministrationRegion local_jurisdiction;

  /** The name of the jurisdiction. */
  String name;

  /** A list of sources for this area. If multiple sources are listed the data has been aggregated from those sources. */
  List<Source> sources;

  /** Create new AdministrationRegion from JSON data */
  AdministrationRegion.fromJson(Map json) {
    if (json.containsKey("electionAdministrationBody")) {
      electionAdministrationBody = new AdministrativeBody.fromJson(json["electionAdministrationBody"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("local_jurisdiction")) {
      local_jurisdiction = new AdministrationRegion.fromJson(json["local_jurisdiction"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("sources")) {
      sources = [];
      json["sources"].forEach((item) {
        sources.add(new Source.fromJson(item));
      });
    }
  }

  /** Create JSON Object for AdministrationRegion */
  Map toJson() {
    var output = new Map();

    if (electionAdministrationBody != null) {
      output["electionAdministrationBody"] = electionAdministrationBody.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (local_jurisdiction != null) {
      output["local_jurisdiction"] = local_jurisdiction.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (sources != null) {
      output["sources"] = new List();
      sources.forEach((item) {
        output["sources"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of AdministrationRegion */
  String toString() => JSON.stringify(this.toJson());

}

/** Information about an election administrative body (e.g. County Board of Elections). */
class AdministrativeBody {

  /** A URL provided by this administrative body for information on absentee voting. */
  String absenteeVotingInfoUrl;

  /** A URL provided by this administrative body to give contest information to the voter. */
  String ballotInfoUrl;

  /** The mailing address of this administrative body. */
  SimpleAddressType correspondenceAddress;

  /** A URL provided by this administrative body for looking up general election information. */
  String electionInfoUrl;

  /** The election officials for this election administrative body. */
  List<ElectionOfficial> electionOfficials;

  /** A URL provided by this administrative body for confirming that the voter is registered to vote. */
  String electionRegistrationConfirmationUrl;

  /** A URL provided by this administrative body for looking up how to register to vote. */
  String electionRegistrationUrl;

  /** A URL provided by this administrative body describing election rules to the voter. */
  String electionRulesUrl;

  /** A description of the hours of operation for this administrative body. */
  String hoursOfOperation;

  /** The name of this election administrative body. */
  String name;

  /** The physical address of this administrative body. */
  SimpleAddressType physicalAddress;

  /** A description of the services this administrative body may provide. */
  List<String> voter_services;

  /** A URL provided by this administrative body for looking up where to vote. */
  String votingLocationFinderUrl;

  /** Create new AdministrativeBody from JSON data */
  AdministrativeBody.fromJson(Map json) {
    if (json.containsKey("absenteeVotingInfoUrl")) {
      absenteeVotingInfoUrl = json["absenteeVotingInfoUrl"];
    }
    if (json.containsKey("ballotInfoUrl")) {
      ballotInfoUrl = json["ballotInfoUrl"];
    }
    if (json.containsKey("correspondenceAddress")) {
      correspondenceAddress = new SimpleAddressType.fromJson(json["correspondenceAddress"]);
    }
    if (json.containsKey("electionInfoUrl")) {
      electionInfoUrl = json["electionInfoUrl"];
    }
    if (json.containsKey("electionOfficials")) {
      electionOfficials = [];
      json["electionOfficials"].forEach((item) {
        electionOfficials.add(new ElectionOfficial.fromJson(item));
      });
    }
    if (json.containsKey("electionRegistrationConfirmationUrl")) {
      electionRegistrationConfirmationUrl = json["electionRegistrationConfirmationUrl"];
    }
    if (json.containsKey("electionRegistrationUrl")) {
      electionRegistrationUrl = json["electionRegistrationUrl"];
    }
    if (json.containsKey("electionRulesUrl")) {
      electionRulesUrl = json["electionRulesUrl"];
    }
    if (json.containsKey("hoursOfOperation")) {
      hoursOfOperation = json["hoursOfOperation"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("physicalAddress")) {
      physicalAddress = new SimpleAddressType.fromJson(json["physicalAddress"]);
    }
    if (json.containsKey("voter_services")) {
      voter_services = [];
      json["voter_services"].forEach((item) {
        voter_services.add(item);
      });
    }
    if (json.containsKey("votingLocationFinderUrl")) {
      votingLocationFinderUrl = json["votingLocationFinderUrl"];
    }
  }

  /** Create JSON Object for AdministrativeBody */
  Map toJson() {
    var output = new Map();

    if (absenteeVotingInfoUrl != null) {
      output["absenteeVotingInfoUrl"] = absenteeVotingInfoUrl;
    }
    if (ballotInfoUrl != null) {
      output["ballotInfoUrl"] = ballotInfoUrl;
    }
    if (correspondenceAddress != null) {
      output["correspondenceAddress"] = correspondenceAddress.toJson();
    }
    if (electionInfoUrl != null) {
      output["electionInfoUrl"] = electionInfoUrl;
    }
    if (electionOfficials != null) {
      output["electionOfficials"] = new List();
      electionOfficials.forEach((item) {
        output["electionOfficials"].add(item.toJson());
      });
    }
    if (electionRegistrationConfirmationUrl != null) {
      output["electionRegistrationConfirmationUrl"] = electionRegistrationConfirmationUrl;
    }
    if (electionRegistrationUrl != null) {
      output["electionRegistrationUrl"] = electionRegistrationUrl;
    }
    if (electionRulesUrl != null) {
      output["electionRulesUrl"] = electionRulesUrl;
    }
    if (hoursOfOperation != null) {
      output["hoursOfOperation"] = hoursOfOperation;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (physicalAddress != null) {
      output["physicalAddress"] = physicalAddress.toJson();
    }
    if (voter_services != null) {
      output["voter_services"] = new List();
      voter_services.forEach((item) {
        output["voter_services"].add(item);
      });
    }
    if (votingLocationFinderUrl != null) {
      output["votingLocationFinderUrl"] = votingLocationFinderUrl;
    }

    return output;
  }

  /** Return String representation of AdministrativeBody */
  String toString() => JSON.stringify(this.toJson());

}

/** Information about a candidate running for elected office. */
class Candidate {

  /** The URL for the candidate's campaign web site. */
  String candidateUrl;

  /** A list of known (social) media channels for this candidate. */
  List<Channel> channels;

  /** The email address for the candidate's campaign. */
  String email;

  /** The candidate's name. */
  String name;

  /** The order the candidate appears on the ballot for this contest. */
  String orderOnBallot;

  /** The full name of the party the candidate is a member of. */
  String party;

  /** The voice phone number for the candidate's campaign office. */
  String phone;

  /** A URL for a photo of the candidate. */
  String photoUrl;

  /** Create new Candidate from JSON data */
  Candidate.fromJson(Map json) {
    if (json.containsKey("candidateUrl")) {
      candidateUrl = json["candidateUrl"];
    }
    if (json.containsKey("channels")) {
      channels = [];
      json["channels"].forEach((item) {
        channels.add(new Channel.fromJson(item));
      });
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("orderOnBallot")) {
      orderOnBallot = json["orderOnBallot"];
    }
    if (json.containsKey("party")) {
      party = json["party"];
    }
    if (json.containsKey("phone")) {
      phone = json["phone"];
    }
    if (json.containsKey("photoUrl")) {
      photoUrl = json["photoUrl"];
    }
  }

  /** Create JSON Object for Candidate */
  Map toJson() {
    var output = new Map();

    if (candidateUrl != null) {
      output["candidateUrl"] = candidateUrl;
    }
    if (channels != null) {
      output["channels"] = new List();
      channels.forEach((item) {
        output["channels"].add(item.toJson());
      });
    }
    if (email != null) {
      output["email"] = email;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (orderOnBallot != null) {
      output["orderOnBallot"] = orderOnBallot;
    }
    if (party != null) {
      output["party"] = party;
    }
    if (phone != null) {
      output["phone"] = phone;
    }
    if (photoUrl != null) {
      output["photoUrl"] = photoUrl;
    }

    return output;
  }

  /** Return String representation of Candidate */
  String toString() => JSON.stringify(this.toJson());

}

/** A social media or web channel for a candidate. */
class Channel {

  /** The unique public identifier for the candidate's channel. */
  String id;

  /** The type of channel. The following is a list of types of channels, but is not exhaustive. More channel types may be added at a later time. One of: GooglePlus, YouTube, Facebook, Twitter */
  String type;

  /** Create new Channel from JSON data */
  Channel.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Channel */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Channel */
  String toString() => JSON.stringify(this.toJson());

}

/** Information about a contest that appears on a voter's ballot. */
class Contest {

  /** A number specifying the position of this contest on the voter's ballot. */
  String ballotPlacement;

  /** The candidate choices for this contest. */
  List<Candidate> candidates;

  /** Information about the electoral district that this contest is in. */
  ElectoralDistrict district;

  /** A description of any additional eligibility requirements for voting in this contest. */
  String electorateSpecifications;

  /** An ID for this object. IDs may change in future requests and should not be cached. Access to this field requires special access that can be requested from the Request more link on the Quotas page. */
  String id;

  /** The level of office for this contest. One of: federal, state, county, city, other */
  String level;

  /** The number of candidates that will be elected to office in this contest. */
  String numberElected;

  /** The number of candidates that a voter may vote for in this contest. */
  String numberVotingFor;

  /** The name of the office for this contest. */
  String office;

  /** If this is a partisan election, the name of the party it is for. */
  String primaryParty;

  /** A brief description of the referendum. This field is only populated for contests of type 'Referendum'. */
  String referendumSubtitle;

  /** The title of the referendum. (e.g. 'Proposition 42') This field is only populated for contests of type 'Referendum'. */
  String referendumTitle;

  /** A link the referendum. This field is only populated for contests of type 'Referendum'. */
  String referendumUrl;

  /** A list of sources for this contest. If multiple sources are listed, the data has been aggregated from those sources. */
  List<Source> sources;

  /** "Yes" or "No" depending on whether this a contest being held outside the normal election cycle. */
  String special;

  /** The type of contest. Usually this will be 'General', 'Primary', or 'Run-off' for contests with candidates. For referenda this will be 'Referendum'. */
  String type;

  /** Create new Contest from JSON data */
  Contest.fromJson(Map json) {
    if (json.containsKey("ballotPlacement")) {
      ballotPlacement = json["ballotPlacement"];
    }
    if (json.containsKey("candidates")) {
      candidates = [];
      json["candidates"].forEach((item) {
        candidates.add(new Candidate.fromJson(item));
      });
    }
    if (json.containsKey("district")) {
      district = new ElectoralDistrict.fromJson(json["district"]);
    }
    if (json.containsKey("electorateSpecifications")) {
      electorateSpecifications = json["electorateSpecifications"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("level")) {
      level = json["level"];
    }
    if (json.containsKey("numberElected")) {
      numberElected = json["numberElected"];
    }
    if (json.containsKey("numberVotingFor")) {
      numberVotingFor = json["numberVotingFor"];
    }
    if (json.containsKey("office")) {
      office = json["office"];
    }
    if (json.containsKey("primaryParty")) {
      primaryParty = json["primaryParty"];
    }
    if (json.containsKey("referendumSubtitle")) {
      referendumSubtitle = json["referendumSubtitle"];
    }
    if (json.containsKey("referendumTitle")) {
      referendumTitle = json["referendumTitle"];
    }
    if (json.containsKey("referendumUrl")) {
      referendumUrl = json["referendumUrl"];
    }
    if (json.containsKey("sources")) {
      sources = [];
      json["sources"].forEach((item) {
        sources.add(new Source.fromJson(item));
      });
    }
    if (json.containsKey("special")) {
      special = json["special"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Contest */
  Map toJson() {
    var output = new Map();

    if (ballotPlacement != null) {
      output["ballotPlacement"] = ballotPlacement;
    }
    if (candidates != null) {
      output["candidates"] = new List();
      candidates.forEach((item) {
        output["candidates"].add(item.toJson());
      });
    }
    if (district != null) {
      output["district"] = district.toJson();
    }
    if (electorateSpecifications != null) {
      output["electorateSpecifications"] = electorateSpecifications;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (level != null) {
      output["level"] = level;
    }
    if (numberElected != null) {
      output["numberElected"] = numberElected;
    }
    if (numberVotingFor != null) {
      output["numberVotingFor"] = numberVotingFor;
    }
    if (office != null) {
      output["office"] = office;
    }
    if (primaryParty != null) {
      output["primaryParty"] = primaryParty;
    }
    if (referendumSubtitle != null) {
      output["referendumSubtitle"] = referendumSubtitle;
    }
    if (referendumTitle != null) {
      output["referendumTitle"] = referendumTitle;
    }
    if (referendumUrl != null) {
      output["referendumUrl"] = referendumUrl;
    }
    if (sources != null) {
      output["sources"] = new List();
      sources.forEach((item) {
        output["sources"].add(item.toJson());
      });
    }
    if (special != null) {
      output["special"] = special;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Contest */
  String toString() => JSON.stringify(this.toJson());

}

/** Information about the election that was queried. */
class Election {

  /** Day of the election in YYYY-MM-DD format. */
  String electionDay;

  /** The unique ID of this election. */
  String id;

  /** A displayable name for the election. */
  String name;

  /** Create new Election from JSON data */
  Election.fromJson(Map json) {
    if (json.containsKey("electionDay")) {
      electionDay = json["electionDay"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for Election */
  Map toJson() {
    var output = new Map();

    if (electionDay != null) {
      output["electionDay"] = electionDay;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of Election */
  String toString() => JSON.stringify(this.toJson());

}

/** Information about individual election officials. */
class ElectionOfficial {

  /** The email address of the election official. */
  String emailAddress;

  /** The fax number of the election official. */
  String faxNumber;

  /** The full name of the election official. */
  String name;

  /** The office phone number of the election official. */
  String officePhoneNumber;

  /** The title of the election official. */
  String title;

  /** Create new ElectionOfficial from JSON data */
  ElectionOfficial.fromJson(Map json) {
    if (json.containsKey("emailAddress")) {
      emailAddress = json["emailAddress"];
    }
    if (json.containsKey("faxNumber")) {
      faxNumber = json["faxNumber"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("officePhoneNumber")) {
      officePhoneNumber = json["officePhoneNumber"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for ElectionOfficial */
  Map toJson() {
    var output = new Map();

    if (emailAddress != null) {
      output["emailAddress"] = emailAddress;
    }
    if (faxNumber != null) {
      output["faxNumber"] = faxNumber;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (officePhoneNumber != null) {
      output["officePhoneNumber"] = officePhoneNumber;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of ElectionOfficial */
  String toString() => JSON.stringify(this.toJson());

}

/** The list of elections available for this version of the API. */
class ElectionsQueryResponse {

  /** A list of available elections */
  List<Election> elections;

  /** The kind, fixed to "civicinfo#electionsQueryResponse". */
  String kind;

  /** Create new ElectionsQueryResponse from JSON data */
  ElectionsQueryResponse.fromJson(Map json) {
    if (json.containsKey("elections")) {
      elections = [];
      json["elections"].forEach((item) {
        elections.add(new Election.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ElectionsQueryResponse */
  Map toJson() {
    var output = new Map();

    if (elections != null) {
      output["elections"] = new List();
      elections.forEach((item) {
        output["elections"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ElectionsQueryResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Describes the geographic scope of a contest. */
class ElectoralDistrict {

  /** An identifier for this district, relative to its scope. For example, the 34th State Senate district would have id "34" and a scope of stateUpper. */
  String id;

  /** The name of the district. */
  String name;

  /** The geographic scope of this district. If unspecified the district's geography is not known. One of: statewide, congressional, stateUpper, stateLower, countywide, judicial, schoolBoard, cityWide, special */
  String scope;

  /** Create new ElectoralDistrict from JSON data */
  ElectoralDistrict.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("scope")) {
      scope = json["scope"];
    }
  }

  /** Create JSON Object for ElectoralDistrict */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (scope != null) {
      output["scope"] = scope;
    }

    return output;
  }

  /** Return String representation of ElectoralDistrict */
  String toString() => JSON.stringify(this.toJson());

}

/** A location where a voter can vote. This may be an early vote site or an election day voting location. */
class PollingLocation {

  /** The address of the location */
  SimpleAddressType address;

  /** The last date that this early vote site may be used. This field is not populated for polling locations. */
  String endDate;

  /** An ID for this object. IDs may change in future requests and should not be cached. Access to this field requires special access that can be requested from the Request more link on the Quotas page. */
  String id;

  /** The name of the early vote site. This field is not populated for polling locations. */
  String name;

  /** Notes about this location (e.g. accessibility ramp or entrance to use) */
  String notes;

  /** A description of when this location is open. */
  String pollingHours;

  /** A list of sources for this location. If multiple sources are listed the data has been aggregated from those sources. */
  List<Source> sources;

  /** The first date that this early vote site may be used. This field is not populated for polling locations. */
  String startDate;

  /** The services provided by this early vote site. This field is not populated for polling locations. */
  String voterServices;

  /** Create new PollingLocation from JSON data */
  PollingLocation.fromJson(Map json) {
    if (json.containsKey("address")) {
      address = new SimpleAddressType.fromJson(json["address"]);
    }
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("notes")) {
      notes = json["notes"];
    }
    if (json.containsKey("pollingHours")) {
      pollingHours = json["pollingHours"];
    }
    if (json.containsKey("sources")) {
      sources = [];
      json["sources"].forEach((item) {
        sources.add(new Source.fromJson(item));
      });
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
    if (json.containsKey("voterServices")) {
      voterServices = json["voterServices"];
    }
  }

  /** Create JSON Object for PollingLocation */
  Map toJson() {
    var output = new Map();

    if (address != null) {
      output["address"] = address.toJson();
    }
    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (notes != null) {
      output["notes"] = notes;
    }
    if (pollingHours != null) {
      output["pollingHours"] = pollingHours;
    }
    if (sources != null) {
      output["sources"] = new List();
      sources.forEach((item) {
        output["sources"].add(item.toJson());
      });
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }
    if (voterServices != null) {
      output["voterServices"] = voterServices;
    }

    return output;
  }

  /** Return String representation of PollingLocation */
  String toString() => JSON.stringify(this.toJson());

}

/** A simple representation of an address. */
class SimpleAddressType {

  /** The city or town for the address. */
  String city;

  /** The street name and number of this address. */
  String line1;

  /** The second line the address, if needed. */
  String line2;

  /** The third line of the address, if needed. */
  String line3;

  /** The name of the location. */
  String locationName;

  /** The US two letter state abbreviation of the address. */
  String state;

  /** The US Postal Zip Code of the address. */
  String zip;

  /** Create new SimpleAddressType from JSON data */
  SimpleAddressType.fromJson(Map json) {
    if (json.containsKey("city")) {
      city = json["city"];
    }
    if (json.containsKey("line1")) {
      line1 = json["line1"];
    }
    if (json.containsKey("line2")) {
      line2 = json["line2"];
    }
    if (json.containsKey("line3")) {
      line3 = json["line3"];
    }
    if (json.containsKey("locationName")) {
      locationName = json["locationName"];
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
    if (json.containsKey("zip")) {
      zip = json["zip"];
    }
  }

  /** Create JSON Object for SimpleAddressType */
  Map toJson() {
    var output = new Map();

    if (city != null) {
      output["city"] = city;
    }
    if (line1 != null) {
      output["line1"] = line1;
    }
    if (line2 != null) {
      output["line2"] = line2;
    }
    if (line3 != null) {
      output["line3"] = line3;
    }
    if (locationName != null) {
      output["locationName"] = locationName;
    }
    if (state != null) {
      output["state"] = state;
    }
    if (zip != null) {
      output["zip"] = zip;
    }

    return output;
  }

  /** Return String representation of SimpleAddressType */
  String toString() => JSON.stringify(this.toJson());

}

/** Contains information about the data source for the element containing it. */
class Source {

  /** The name of the data source. */
  String name;

  /** Whether this data comes from an official government source. */
  bool official;

  /** Create new Source from JSON data */
  Source.fromJson(Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("official")) {
      official = json["official"];
    }
  }

  /** Create JSON Object for Source */
  Map toJson() {
    var output = new Map();

    if (name != null) {
      output["name"] = name;
    }
    if (official != null) {
      output["official"] = official;
    }

    return output;
  }

  /** Return String representation of Source */
  String toString() => JSON.stringify(this.toJson());

}

/** A request for information about a voter. */
class VoterInfoRequest {

  /** The registered address of the voter to look up. */
  String address;

  /** Create new VoterInfoRequest from JSON data */
  VoterInfoRequest.fromJson(Map json) {
    if (json.containsKey("address")) {
      address = json["address"];
    }
  }

  /** Create JSON Object for VoterInfoRequest */
  Map toJson() {
    var output = new Map();

    if (address != null) {
      output["address"] = address;
    }

    return output;
  }

  /** Return String representation of VoterInfoRequest */
  String toString() => JSON.stringify(this.toJson());

}

/** The result of a voter info lookup query. */
class VoterInfoResponse {

  /** Contests that will appear on the voter's ballot */
  List<Contest> contests;

  /** Locations where the voter is eligible to vote early, prior to election day */
  List<PollingLocation> earlyVoteSites;

  /** The election that was queried. */
  Election election;

  /** The kind, fixed to "civicinfo#voterInfoResponse". */
  String kind;

  /** The normalized version of the requested address */
  SimpleAddressType normalizedInput;

  /** Locations where the voter is eligible to vote on election day. For states with mail-in voting only, these locations will be nearby drop box locations. Drop box locations are free to the voter and may be used instead of placing the ballot in the mail. */
  List<PollingLocation> pollingLocations;

  /** Local Election Information for the state that the voter votes in. For the US, there will only be one element in this array. */
  List<AdministrationRegion> state;

  /** The result of the request. One of: success, noStreetSegmentFound, addressUnparseable, noAddressParameter, multipleStreetSegmentsFound, electionOver, electionUnknown, internalLookupFailure */
  String status;

  /** Create new VoterInfoResponse from JSON data */
  VoterInfoResponse.fromJson(Map json) {
    if (json.containsKey("contests")) {
      contests = [];
      json["contests"].forEach((item) {
        contests.add(new Contest.fromJson(item));
      });
    }
    if (json.containsKey("earlyVoteSites")) {
      earlyVoteSites = [];
      json["earlyVoteSites"].forEach((item) {
        earlyVoteSites.add(new PollingLocation.fromJson(item));
      });
    }
    if (json.containsKey("election")) {
      election = new Election.fromJson(json["election"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("normalizedInput")) {
      normalizedInput = new SimpleAddressType.fromJson(json["normalizedInput"]);
    }
    if (json.containsKey("pollingLocations")) {
      pollingLocations = [];
      json["pollingLocations"].forEach((item) {
        pollingLocations.add(new PollingLocation.fromJson(item));
      });
    }
    if (json.containsKey("state")) {
      state = [];
      json["state"].forEach((item) {
        state.add(new AdministrationRegion.fromJson(item));
      });
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for VoterInfoResponse */
  Map toJson() {
    var output = new Map();

    if (contests != null) {
      output["contests"] = new List();
      contests.forEach((item) {
        output["contests"].add(item.toJson());
      });
    }
    if (earlyVoteSites != null) {
      output["earlyVoteSites"] = new List();
      earlyVoteSites.forEach((item) {
        output["earlyVoteSites"].add(item.toJson());
      });
    }
    if (election != null) {
      output["election"] = election.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (normalizedInput != null) {
      output["normalizedInput"] = normalizedInput.toJson();
    }
    if (pollingLocations != null) {
      output["pollingLocations"] = new List();
      pollingLocations.forEach((item) {
        output["pollingLocations"].add(item.toJson());
      });
    }
    if (state != null) {
      output["state"] = new List();
      state.forEach((item) {
        output["state"].add(item.toJson());
      });
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of VoterInfoResponse */
  String toString() => JSON.stringify(this.toJson());

}

