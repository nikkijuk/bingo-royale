import 'package:bingo_model/src/game.dart';
import 'package:config/src/source_yaml_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(WidgetsFlutterBinding.ensureInitialized);

  testWidgets('read game from yaml file', (tester) async {
    final source = SourceYamlFile(filename: 'assets/game1.yaml');

    final gameJson = await source.readJson();
    final game = Game.fromJson(gameJson);

    expect(game.width, equals(5));
    expect(game.height, equals(5));
  });
}
