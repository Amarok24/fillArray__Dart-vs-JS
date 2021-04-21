# fillArray__Dart-vs-JS
Speed comparison of Dart vs. JavaScript, filling an array with numbers.

*Tests done on: Intel i7 2.9 GHz, Windows 10 64bit*

*Dart: Dart SDK version: 2.12.2 (stable)*

### 3 test runs with parameters: 1000002, 1000003, 1000004 (to avoid any runtime caching)

## fillArray.dart
- 2 ms
- 2 ms
- 3 ms
- AVERAGE: 2.33ms

Compiled (NATIVE .exe) code execution:

- 1 ms
- 1 ms
- 2 ms
- AVERAGE: 1.333ms

## growList.dart
- 26 ms
- 21 ms
- 22 ms
- AVERAGE: 23ms

Compiled (NATIVE .exe) code execution:

- 19 ms
- 17 ms
- 16 ms
- AVERAGE: 17.333ms

## growDynamicList.dart
- 20ms
- 23ms
- 25ms
- AVERAGE: 22.67ms

## fillArray.js
Brave browser (Version 1.16.68 Chromium: 86.0.4240.111)
- 4.76708984375 ms
- 2.39404296875 ms
- 2.76123046875 ms
- AVERAGE: 3.3ms

## fillArrayInt32.js
Deno { deno: "1.5.1", v8: "8.7.220.3", typescript: "4.0.3" }
- 5 ms
- 5 ms
- 6 ms
- AVERAGE: 5.7ms (speed in NodeJS is equivalent)

## growArray.js
Brave browser (Version 1.16.68 Chromium: 86.0.4240.111)
- 20.570068359375 ms
- 21.253173828125 ms
- 19.4140625 ms
- AVERAGE: 20.4ms
