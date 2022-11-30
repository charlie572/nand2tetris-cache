load Equal16.hdl,
output-file Equal16.out,
compare-to Equal16.cmp,
output-list a%D1.4.1 b%D1.4.1 out%D3.1.1;

set a 0,
set b 0,
eval,
output;

set a 0,
set b 1,
eval,
output;

set a 15,
set b 14,
eval,
output;

set a 15,
set b 15,
eval,
output;

set a 1101,
set b 254,
eval,
output;

set a 1101,
set b 1101,
eval,
output;

set a 5523,
set b 5523,
eval,
output;

set a 5523,
set b 5522,
eval,
output;
