
// if var definition
var a = false
if (var a = true) System.print(a) // expect: true
System.print(a) //expect: false

// if var definition respect var semanitic
var b = false
if (var b = b) System.print(b) // expect: false
