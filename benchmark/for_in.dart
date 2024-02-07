import 'package:bench_loop/loop.dart';
import 'package:benchmarking/benchmarking.dart';

void main() {
  List<Point> points = List.generate(1000000, (i) => Point(i, i + 1));
  int ret = 0;
  syncBenchmark('for', () {
    ret = forF(points);
  }).report();

  assert(ret == testResult);
}
