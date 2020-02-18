import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:clasherbeta/summoner.dart';

Future<summoner> fetchSummoner() async{
  final response = await http.get('https://na1.api.riotgames.com/lol/summoner/v4/summoners/by-name/dianelovesramen?api_key= THE CURRENT VERSION OF THIS WONT WORK REQUIRED API KEY HERE');

  if(response.statusCode == 200){
    return summoner.fromJson(json.decode(response.body));
  } else{
    throw Exception('Failed to load Summoner');
  }
}

Future<summoner> sum;

void main() => runApp(TeamPage());

class TeamPage extends StatefulWidget{
  TeamPage({Key key}) : super(key: key);
  @override
  _TeamPageState createState() => new _TeamPageState();

}

class _TeamPageState extends State<TeamPage> {
  @override
  void initState() {
    super.initState();
    sum = fetchSummoner();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: FutureBuilder<summoner>(
            future: sum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                    child:Text("TEAM PLEASe")
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );

  }
}