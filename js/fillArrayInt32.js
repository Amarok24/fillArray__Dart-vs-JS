function fillArrayInt32(max) {
    let arr;
    let maxNum = 1000000;
    if (max) {
        console.log("Parameter provided, assuming integer: " + max);
        maxNum = max;
    } else {
        console.log("No parameter provided, using default " + maxNum);
    }
    arr = new Int32Array(maxNum);
    console.time("grow");
    for(let i = 0; i < maxNum; i++){
        arr[i] = i;
    }
    console.timeEnd("grow");
}
if (process.argv.length) {
    fillArrayInt32(parseInt(process.argv[0]));
} else {
    fillArrayInt32();
}

/*
Deno { deno: "1.5.1", v8: "8.7.220.3", typescript: "4.0.3" }
- 5 ms
- 5 ms
- 6 ms
- AVERAGE: 5.7ms (speed in NodeJS is equivalent)

*/
