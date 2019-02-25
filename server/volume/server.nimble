# Package

version       = "0.1.0"
author        = "k-nzk"
description   = "nim jester api server"
license       = "MIT"
srcDir        = "src"
bin           = @["server"]

# Dependencies

requires "nim >= 0.18.0"
requires "jester >= 0.4.1"


# build dir
srcDir = "src"
binDir = "bin"
bin = @["server"]


# task
task serverstart, "start jester server":
  rmDir "bin"
  mkDir "bin/resources/conf"
  exec "cp -rf src/resources/conf bin/resources/"
  exec "nimble build"
  exec "bin/server"
