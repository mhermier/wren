System.print(~0 == 0xfffffffffffff) // expect: true
System.print(~1 == 0xffffffffffffe) // expect: true
System.print(~23 == 0xfffffffffffe8) // expect: true

// Max u52 value.
System.print(~0xfffffffffffff) // expect: 0

// TODO: Negative numbers.
// TODO: Floating-point numbers.
// TODO: Numbers that don't fit in u32.
