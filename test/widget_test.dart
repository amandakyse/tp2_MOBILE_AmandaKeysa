
import 'package:flutter_test/flutter_test.dart';
import 'package:kartu_nama/main.dart';

void main() {
  testWidgets('Aplikasi kartu nama tampil', (WidgetTester tester) async {
    await tester.pumpWidget(const DigitalBusinessCardApp());

    expect(find.text('Amanda Keysa Maulida'), findsOneWidget);
    expect(find.text('MAHASISWA TEKNIK INFORMATIKA'), findsOneWidget);
    expect(find.text('Instagram: amandakyse'), findsOneWidget);
    expect(find.text('TikTok: @keyseeu'), findsOneWidget);
    expect(find.text('Roblox: Sakeysa4'), findsOneWidget);
  });
}