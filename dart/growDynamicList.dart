// Algorithm which pushes integers to a dynamic and growing array (which is dynamic, therefore can hold mixed types).
void main(List<String> arguments) {
  List<dynamic> dynArray = [];
  int maxNum = 1000000; // By default 1 million integers in array.
  var stopwatch = new Stopwatch();

  if (arguments.isNotEmpty) {
    print("Parameter (string) provided, parsing to integer: " + arguments[0]);
    maxNum = int.parse(arguments[0]);
  } else {
    print("No parameter provided, using default $maxNum");
  }

  stopwatch.start();

  for (int i = 0; i < maxNum; i++) {
    dynArray.add(i);
  }

  stopwatch.stop();

  dynArray.add("test"); // Just to show that other types can be added.

  print("Time elapsed: ${stopwatch.elapsedMilliseconds}ms");
}

/*
Intel i7 2.9 GHz, Windows 10 64bit
3 test runs with parameters: 1000002, 1000003, 1000004
Dart SDK version: 2.12.2 (stable)

Time elapsed: 20ms
Time elapsed: 23ms
Time elapsed: 25ms
AVERAGE: 22.67ms

*/
