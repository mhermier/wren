System.print(~0) // expect: 4294967295
System.print(~1) // expect: 4294967294
System.print(~23) // expect: 4294967272

// Max u32 value.
System.print(~0xffffffff) // expect: 0

// TODO: Negative numbers.
// TODO: Floating-point numbers.
// TODO: Numbers that don't fit in u32.
