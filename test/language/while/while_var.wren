
// while var definition
var a = false
while (var a = true) {
  System.print(a) // expect: true
  break
}
System.print(a) //expect: false

// while var definition respect var semanitic
var b = false
while (var b = b) {
  System.print(b) // expect: false
  break
}
