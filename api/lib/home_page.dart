
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model_class.dart';

class Fb extends StatefulWidget {
  const Fb({Key? key}) : super(key: key);

  @override
  _FbState createState() => _FbState();
}

class _FbState extends State<Fb> {
  late List<ReasonData> data = [];
  bool isLoading = true;

  Future<void> fetchData() async {
    final url = Uri.parse('https://fakestoreapi.com/products');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      setState(() {
        data = jsonResponse.map((json) => ReasonData.fromJson(json)).toList();
        isLoading = false;
      },);
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get'),
      ),
      body: isLoading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: data.map((comment) {
            return ListTile(
              title: Text(comment.title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(comment.description),
                  Text(comment.category),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}




// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// import 'model_class.dart';
//
// class Fb extends StatefulWidget {
//   const Fb({Key? key}) : super(key: key);
//
//   @override
//   _FbState createState() => _FbState();
// }
//
// class _FbState extends State<Fb> {
//   late List<ReasonData> data = [];
//
//   Future<void> fetchData() async {
//     final url = Uri.parse('https://fakestoreapi.com/products');
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       final List<dynamic> jsonResponse = json.decode(response.body);
//       setState(() {
//         data = jsonResponse.map((json) => ReasonData.fromJson(json)).toList();
//       });
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Get'),
//       ),
//       body: SingleChildScrollView(
//         child: data.isNotEmpty ? Column(crossAxisAlignment: CrossAxisAlignment.start,
//           children: data.map((comment) {
//             return ListTile(
//               title: Text(comment.name),
//               subtitle: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(comment.email),
//                   Text(comment.body),
//                 ],
//               ),
//             );
//           }).toList(),
//         )
//             : null,
//       ),
//     );
//   }
// }