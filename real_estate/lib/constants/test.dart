import 'package:flutter/material.dart';
import 'package:real_estate/constants/realtest.dart';

import 'get_notes_data.dart';

class SearchUser extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query:
          "";
        },
        icon: const Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios),
    );
  }

  FetchUser note = FetchUser();
  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<List<GetNote>>(
        future: note.getUser(query: query),
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
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Center(
      child: Text('search users'),
    );
  }
}



// import 'package:flutter/material.dart';

// class TestScreen extends StatefulWidget {
//   const TestScreen({super.key, required this.title});
//   final String title;

//   @override
//   State<TestScreen> createState() => _TestScreenState();
// }

// class _TestScreenState extends State<TestScreen> {
//   final List<Map<String, dynamic>> _allUsers = [
//     {"id": 1, "name": "bataa"},
//     {"id": 3, "name": "dorjoo"},
//     {"id": 4, "name": "erka"},
//     {"id": 5, "name": "anu"},
//     {"id": 6, "name": "tergel"},
//     {"id": 7, "name": "maralgoo"},
//   ];
//   List<Map<String, dynamic>> _foundUsers = [];
//   @override
//   void initState() {
//     _foundUsers = _allUsers;
//     super.initState();
//   }

//   void runFilter(String enteredKeyword) {
//     List<Map<String, dynamic>> results = [];
//     if (enteredKeyword.isEmpty) {
//       results = _allUsers;
//     } else {
//       results = _allUsers
//           .where((user) =>
//               user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
//           .toList();
//     }
//     setState(() {
//       _foundUsers = results;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           widget.title,
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             TextField(
//               onChanged: (value) => runFilter(value),
//               decoration: const InputDecoration(
//                   labelText: 'text', suffixIcon: Icon(Icons.search)),
//             ),
//             Expanded(
//               // height: MediaQuery.of(context).size.height * 0.8,
//               // width: MediaQuery.of(context).size.width,
//               child: ListView.builder(
//                 itemCount: _foundUsers.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Card(
//                     key: ValueKey(
//                       _foundUsers[index]["id"],
//                     ),
//                     color: Colors.blue,
//                     elevation: 4,
//                     margin: const EdgeInsets.symmetric(vertical: 10),
//                     child: ListTile(
//                       leading: Text(
//                         _foundUsers[index]["name"],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
