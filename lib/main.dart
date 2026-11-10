import 'package:flutter/material.dart';
import 'models/payment.dart';

void main() {
// Print all payments in the Debug Console.
for (final e in samplePayments) {
print(e);
}

// Print the total.
print('Total: ${formatIqd(totalOf(samplePayments))}');
print('${countOf(samplePayments)} payments');
runApp(const GenTrackApp());
}

class GenTrackApp extends StatelessWidget {
const GenTrackApp({super.key});

@override
Widget build(BuildContext context) {
final total = totalOf(samplePayments);

return MaterialApp(
  title: 'GenTrack',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.teal,
    ),
  ),
  home: Scaffold(
    appBar: AppBar(
      title: const Text('GenTrack'),
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
    ),
    body: Center(
      child: Text(
        'Total paid: ${formatIqd(total)}',
        style: const TextStyle(fontSize: 24),
      ),
    ),
  ),
);
}
}