import 'dart:async';

import 'package:simplebingo/app/app.dart';
import 'package:simplebingo/bootstrap.dart';

void main() async {
  unawaited(bootstrap(() => const App()));
}
