# Package

version       = "0.1.0"
author        = "Hacker"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["hello_world"]

# Tasks
Tasks:
  "build":
    command = "nim c -d:release -o:bin/hello_world src/hello_world.nim"
    description = "Builds the hello_world executable"

  "run":
    command = "./bin/hello_world"
    description = "Runs the hello_world executable"

# Dependencies

requires "nim >= 1.2.6"
