// ignore_for_file: prefer_single_quotes, avoid_print

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';

/// read json from yaml file
class SourceYamlFile  {

  /// give filename of yaml file
  SourceYamlFile({required this.filename});

  final String filename;

  /// read json from yaml file
  Future<Map<String, dynamic>> readJson() async {
    final yamlString = await rootBundle.loadString(filename);
    print("raw yaml: ");
    print(yamlString);

    final yamlDocument = loadYaml(yamlString);
    print("yaml document: ");
    print(yamlDocument);

    final jsonData = json.encode(yamlDocument);
    print("json data: ");
    print(jsonData);

    final parsedJson = jsonDecode(jsonData) as Map<String, dynamic>;
    print("parsed json: ");
    print(parsedJson);

    return parsedJson;
  }
}
