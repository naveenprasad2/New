//
// Future<List<ReasonData>> getReasonData() async {
//   try {
//     Endpoint endpoint = Endpoint('/return/get-reason');
//     Uri uri = _client.getUri(url, endpoint);
//     String method = "GET";
//     Request request = Request(method, uri);
//     Response response = await _client.run(request);
//     debugModePrint('response: $response');
//     if (_client.httpIsOk(response.statusCode)) {
//       final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
//       final List<dynamic> datajson = jsonResponse['result'];
//       List<ReasonData> returndatas =
//       datajson.map((json) => ReasonData.fromJson(json)).toList();
//       debugModePrint("product response: $returndatas");
//       for (var returndata in returndatas) {
//         debugModePrint('Product Name: ${returndata.id}');
//         debugModePrint('Product Name: ${returndata.reason}');
//       }
//       return returndatas;
//     } else {
//       throw Exception('Failed to load product data');
//     }
//   } catch (e, stackTrace) {
//     throw Exception('Failed to get address: $e\n$stackTrace');
//   }
// }