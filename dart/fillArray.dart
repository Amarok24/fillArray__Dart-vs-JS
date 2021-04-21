// Algorithm which fills an array (pre-defined length) with integers.
void main(List<String> arguments) {
  List<int> intArray;
  int maxNum = 1000000; // By default 1 million integers in array.
  var stopwatch = new Stopwatch();

  if (arguments.isNotEmpty) {
    print("Parameter (string) provided, parsing to integer: " + arguments[0]);
    maxNum = int.parse(arguments[0]);
  } else {
    print("No parameter provided, using default $maxNum");
  }

  //intArray = new List(maxNum); // Deprecated way to init fixed-length array.
  intArray = List.filled(maxNum, 0);

  stopwatch.start();

  for (int i = 0; i < maxNum; i++) {
    intArray[i] = i;
  }

  stopwatch.stop();

  print("Time elapsed: ${stopwatch.elapsedMilliseconds}ms");
}

/*
Intel i7 2.9 GHz, Windows 10 64bit
3 test runs with parameters: 1000002, 1000003, 1000004
Dart SDK version: 2.12.2 (stable)

Time elapsed: 2ms
Time elapsed: 2ms
Time elapsed: 3ms
AVERAGE: 2.333ms

Compiled (NATIVE .exe) code execution:

Time elapsed: 1ms
Time elapsed: 1ms
Time elapsed: 2ms
AVERAGE: 1.333ms

*/
