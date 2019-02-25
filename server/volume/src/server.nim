import jester, posix, json, asyncdispatch, htmlgen, os, osproc, logging

let config_file_name = "bin/resources/conf/conf.json"

onSignal(SIGABRT):
  echo "<2>Received SIGABRT"
  quit(1)

let conf = parseFile(config_file_name)
let fl = newFileLogger(conf["log_fname"].str, fmtStr = "$datetime $levelname ")
fl.addHandler

proc log_debug(args: varargs[string, `$`]) =
  debug args
  fl.file.flushFile()

proc log_info(args: varargs[string, `$`]) =
  info args
  fl.file.flushFile()

include "resources/templates/base.tmpl"
include "resources/templates/home.tmpl"

routes:
  get "/":
    resp base_page(generate_home_page())
  get "/hello":
    resp h1("Hello world test")
  get "/api":
    let jsonObj = %* { "key1": "value1", "key2": 1 }
    resp jsonObj

when isMainModule:
  log_info "starting"
  runForever()
