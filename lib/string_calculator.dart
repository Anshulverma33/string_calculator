int add(String numbers) {
  if (numbers.isEmpty) return 0;

  String delimiterPattern = r'[,\n]';

  if (numbers.startsWith('//')) {
    final parts = numbers.split('\n');
    final customDelimiter = parts[0].substring(2);
    delimiterPattern = RegExp.escape(customDelimiter);
    numbers = parts.sublist(1).join('\n');
  }

  final splitNumbers = numbers.split(RegExp(delimiterPattern));
  final parsedNumbers = <int>[];

  for (var n in splitNumbers) {
    if (n.trim().isEmpty) continue;
    parsedNumbers.add(int.parse(n));
  }

  return parsedNumbers.fold(0, (sum, n) => sum + n);
}
