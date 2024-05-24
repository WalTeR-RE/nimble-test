# Package

version       = "0.1.0"
author        = "Hacker"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["hello_world"]

# Dependencies

requires "nim >= 1.2.6"

# Tasks

task build:
  command = "nim c -d:release -o:bin/hello_world src/hello_world.nim"
  description = "Builds the hello_world executable"

task run:
  command = "./bin/hello_world"
  description = "Runs the hello_world executable"

# Post Install Hook

postInstall:
  exec "nimble run run"
