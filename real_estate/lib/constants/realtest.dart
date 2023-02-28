import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:real_estate/constants/get_notes_data.dart';
import 'package:real_estate/constants/test.dart';

class RealTest extends StatefulWidget {
  const RealTest({super.key});

  @override
  State<RealTest> createState() => _RealTestState();
}

class _RealTestState extends State<RealTest> {
  FetchUser note = FetchUser();
  @override
  void initState() {
    FetchUser().getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: SearchUser());
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: FutureBuilder<List<GetNote>>(
          future: note.getUser(),
          builder: (context, snapshot) {
            var data = snapshot.data;
            // if (snapshot.hasData) {
            //   return const Center(
            //     child: CircularProgressIndicator(),
            //   );
            // }
            return ListView.builder(
              itemCount: data?.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    color: Colors.lightBlueAccent,
                    child: ListTile(
                      title: Text('${data?[index].name}'),
                    ));
              },
            );
          }),
    );
  }
}

class FetchUser {
  var data = [];
  List<GetNote> results = [];
  String fetchurl = "http://103.143.40.250:8100/api/note/type/getnotetype";
  Future<List<GetNote>> getUser({String? query}) async {
    var url = Uri.parse(fetchurl);
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((e) => GetNote.fromJson(e)).toList();
        if (query != null) {
          results
              .where((element) =>
                  element.name!.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }
      } else {
        print('error');
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}
