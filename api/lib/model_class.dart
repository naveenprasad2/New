import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ReasonData {
  String title;
  String description;
  String category;

  ReasonData({
    required this.title,
    required this.description,
    required this.category,
  });

  ReasonData.fromJson(Map<String, dynamic> json)
      : title = json['title'] ?? '',
        description = json['description'] ?? '',
        category = json['category'] ?? '';

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'category': category,
      };
}

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ReasonData {
//   String name;
//   String email;
//   String body;
//
//
//   ReasonData({
//     required this.name,
//     required this.email,
//     required this.body,
//   });
//
//   ReasonData.fromJson(Map<String, dynamic> json)
//       : name = json['name'] ?? '',
//         email = json['email'] ?? '',
//         body = json['body'] ?? '';
//
//   Map<String, dynamic> toJson() => {
//     'name': name,
//     'email': email,
//     'body': body,
//   };
// }
