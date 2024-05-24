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
  exec "nim c -d:release -o:bin/hello_world src/hello_world.nim"
  

task run:
  exec "./bin/hello_world"
  
