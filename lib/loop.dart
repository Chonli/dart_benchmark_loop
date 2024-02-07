const testResult = 2000000000000;

class Point {
  final int lat;
  final int long;

  Point(this.lat, this.long);

  @override
  String toString() => 'Point($lat, $long)';
}

int foreachF(List<Point> points) {
  int sum = 0;
  for (var p in points) {
    sum += p.lat * 2 + p.long * 2;
  }
  return sum;
}

int mapF(List<Point> points) {
  final sum = points
      .map(
        (p) => p.lat * 2 + p.long * 2,
      )
      .reduce((a, b) => a + b);
  return sum;
}

int whileF(List<Point> points) {
  int sum = 0;
  final length = points.length;
  int count = 0;
  while (count < length) {
    final p = points[count];
    sum += p.lat * 2 + p.long * 2;
    count++;
  }
  return sum;
}

int reverseWhileF(List<Point> points) {
  int sum = 0;
  int count = points.length - 1;
  while (count >= 0) {
    final p = points[count];
    sum += p.lat * 2 + p.long * 2;
    count--;
  }

  return sum;
}

int forInF(List<Point> points) {
  int sum = 0;

  for (final p in points) {
    sum += p.lat * 2 + p.long * 2;
  }
  return sum;
}

int forF(List<Point> points) {
  int sum = 0;

  final l = points.length;
  for (int i = 0; i < l; i++) {
    final p = points[i];
    sum += p.lat * 2 + p.long * 2;
  }
  return sum;
}

int reverseForF(List<Point> points) {
  int sum = 0;

  for (int i = points.length - 1; i >= 0; i--) {
    final p = points[i];
    sum += p.lat * 2 + p.long * 2;
  }

  return sum;
}

int iteratorF(List<Point> points) {
  int sum = 0;

  final it = points.iterator;
  while (it.moveNext()) {
    final p = it.current;
    sum += p.lat * 2 + p.long * 2;
  }

  return sum;
}
