System.print(0 << 0) // expect: 0
System.print(1 << 0) // expect: 1
System.print(0 << 1) // expect: 0
System.print(1 << 1) // expect: 2
System.print(0xaaaaaaaaaaaaa << 1 == 0x5555555555554) // expect: true
System.print(0xf0f0f0f0f0f0f << 1 == 0xe1e1e1e1e1e1e) // expect: true

// Max u52 value.
System.print(0xfffffffffffff << 0 == 4503599627370495) // expect: true

// TODO: Negative numbers.
// TODO: Floating-point numbers.
// TODO: Numbers that don't fit in u32.
