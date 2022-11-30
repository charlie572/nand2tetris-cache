load Cache.hdl,
output-file Cache.out,
compare-to Cache.cmp,
output-list time%S1.4.1 in%D1.2.1 addressIn%D1.9.1 load%D1.4.1 memoryIn%D1.8.1 out%D1.3.1 finished%D1.8.1 addressOut%D1.10.1 memoryOut%D1.9.1;

// test cache miss
set in 0,
set addressIn 10,
set load 0,
set memoryIn 1,
tick,
output;
set memoryIn 2,
tock,
output;
tick,
output;
set memoryIn 3,
tock,
output;
tick,
output;
set memoryIn 4,
tock,
output;
tick,
output;
set memoryIn 0,
tock,
output;

// test cache hit
set addressIn 11,
tick,
output;

// test cache hit
set addressIn 9,
tock,
output;

// test cache miss
set in 0,
set addressIn 31,
set load 0,
set memoryIn 8,
tick,
output;
set memoryIn 7,
tock,
output;
tick,
output;
set memoryIn 6,
tock,
output;
tick,
output;
set memoryIn 5,
tock,
output;
tick,
output;
set memoryIn 0,
tock,
output;

// test cache hit
set addressIn 28,
tick,
output;

// test cache hit
set addressIn 29,
tock,
output;

// test cache replacement
set in 0,
set addressIn 42,
set load 0,
set memoryIn 8,
tick,
output;
set memoryIn 9,
tock,
output;
tick,
output;
set memoryIn 10,
tock,
output;
tick,
output;
set memoryIn 11,
tock,
output;
tick,
output;
set memoryIn 0,
tock,
output;

// test cache hit
set addressIn 43,
tick,
output;

// test cache hit
set addressIn 41,
tock,
output;
