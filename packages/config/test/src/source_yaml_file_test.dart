import 'package:config/src/source_yaml_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:collection/collection.dart';

void main() {

  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();
  });

  testWidgets('load users from yaml file', (tester) async  {

    final source = SourceYamlFile(filename:'assets/users.yaml');

    final users = await source.readJson();
    print(users);

    // not managing to get elements out of the map and count them
    expect(users.length, equals(1));
  });

}
