import 'package:flutter_test/flutter_test.dart';

import 'package:netflix_replica/app.dart';

void main() {
  testWidgets('Mostra a tela inicial', (WidgetTester tester) async {
    await tester.pumpWidget(const NetflixReplicaApp());

    expect(find.text('Início'), findsWidgets);
    expect(find.text('Assistir'), findsOneWidget);
  });
}
