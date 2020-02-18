class summoner{

  final int profileIconId;
    // ID of the summoner icon associated with the summoner.
  final String name;
    // Summoner name.
  final String puuid;
    // Encrypted PUUID. Exact length of 78 characters.
  final int summonerLevel;
    // Summoner level associated with the summoner.
  final int revisionDate;
    // Date summoner was last modified specified as epoch milliseconds.
    // The following events will update this timestamp: profile icon change,
    // playing the tutorial or advanced tutorial, finishing a game, summoner name change
  final String id;
    // Encrypted summoner ID. Max length 63 characters.
  final String accountId;
    //Encrypted account ID. Max length 56 characters.

  summoner({this.profileIconId,
    this.name,
    this.puuid,
    this.summonerLevel,
    this.revisionDate,
    this.id,
    this.accountId});

  factory summoner.fromJson(Map<String, dynamic> json) {
    return summoner(
      profileIconId: json['profileIconId'],
      name: json['name'],
      puuid: json['puuid'],
      summonerLevel: json['summonerLevel'],
      revisionDate: json['revisionDate'],
      id: json['id'],
      accountId: json['accountId']
    );
  }
}