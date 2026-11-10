// A single money payment in GenTrack.

class Payment {
final String title;
final int amount; // Amount in Iraqi dinar (IQD)
final String category;
final DateTime date;

// Constructor
Payment({
required this.title,
required this.amount,
required this.category,
required this.date,
});

// Convert payment information into readable text.
@override
String toString() =>
'$title ($category): ${formatIqd(amount)}';
}

// Four sample payments.
final List<Payment> samplePayments = [
Payment(
title: 'Ampere fee',
amount: 8000,
category: 'Generator',
date: DateTime(2026, 10, 12),
),
Payment(
title: 'Mains bill',
amount: 1500,
category: 'Mains',
date: DateTime(2026, 10, 12),
),
Payment(
title: 'Diesel',
amount: 35000,
category: 'Fuel',
date: DateTime(2026, 10, 10),
),
Payment(
title: 'Electrician',
amount: 12000,
category: 'Repairs',
date: DateTime(2026, 10, 9),
),
Payment(
    title: 'Fuse',
    amount: 2000,
    category: 'Generator',
    date: DateTime(2026, 10, 12),
  ),
];

// Calculate the total of all payments.
int totalOf(List<Payment> payments) {
int total = 0;

for (final e in payments) {
total += e.amount;
}

return total;
}
int countOf(List<Payment> list) {
  return list.length;
}
// Format money with commas.
String formatIqd(int amount) {
final digits = amount.toString();
String result = '';

for (int i = 0; i < digits.length; i++) {
final left = digits.length - i;

if (i > 0 && left % 3 == 0) {
  result += ',';
}

result += digits[i];
}

return 'IQD $result';
}