int add(String numbers) {
  if (numbers.isEmpty) return 0;

  final parts = numbers.split(RegExp(r'[,\n]'));
  final nums = parts.map(int.parse).toList();
  return nums.reduce((a, b) => a + b);
}
