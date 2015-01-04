var fiber = new Fiber {
  IO.print("before")
  true.unknownMethod
  IO.print("after")
}

IO.print(fiber.try)
// expect: before
// expect: Bool does not implement method 'unknownMethod' with 0 arguments.
IO.print("after try") // expect: after try
