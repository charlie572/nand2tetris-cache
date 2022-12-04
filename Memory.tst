load Memory.hdl,
output-file Memory.out,
compare-to Memory.cmp,
output-list address%D1.7.1 out%D1.3.1;

// write values 

set load 1,
set in 1,
set address 8,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

set load 1,
set in 2,
set address 9,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

set load 1,
set in 3,
set address 10,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

set load 1,
set in 4,
set address 11,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

set load 1,
set in 8,
set address 28,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

set load 1,
set in 7,
set address 29,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

set load 1,
set in 6,
set address 30,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

set load 1,
set in 5,
set address 31,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

set load 1,
set in 8,
set address 40,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

set load 1,
set in 9,
set address 41,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

set load 1,
set in 10,
set address 42,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

set load 1,
set in 11,
set address 43,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

// read values 

set in 0,
set load 0,
set address 10,
tick,
while finished = 0 {
    tock, tick;
}
tock,
output;

set address 11,
tick,
while finished = 0 {
    tock, tick;
}
tock,
output;

set address 9,
tick,
while finished = 0 {
    tock, tick;
}
tock,
output;

// This will replace a cache line if it is a direct-mapped cache.
set address 42,
tick,
while finished = 0 {
    tock, tick;
}
tock,
output;

set address 43,
tick,
while finished = 0 {
    tock, tick;
}
tock,
output;

set address 41,
tick,
while finished = 0 {
    tock, tick;
}
tock,
output;

// This will replace a cache line again. If it is a direct-mapped
// cache. It will take multiple cycles. If it is set-associative,
// it will only take one.
set address 10,
tick,
while finished = 0 {
    tock, tick;
}
tock,
output;

// overwrite a value

set load 1,
set in 50,
set address 42,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

// read it

set address 42,
tick,
while finished = 0 {
    tock, tick;
}
tock,
output;

// overwrite a value

set load 1,
set in 70,
set address 100,
tick;
while finished = 0 {
    tock, tick;
}
tock;

set load 0,
tick,
tock;

// read it

set address 100,
tick,
while finished = 0 {
    tock, tick;
}
tock,
output;

