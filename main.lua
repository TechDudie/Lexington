io = require("io")
extlib = require("extlib")
iflib = require("iflib")
file = io.open("data.communication", "r")
io.input(file)
filecont = io.read()
io.close(file)
codefile = io.open(filecont, "r")
io.input(codefile)
code = io.read()
io.close(codefile)
var = {}
for str in string.gmatch(code,"([^\n]+)") do
  tokens = {}
  for token in string.gmatch(str,"([^ ]+)") do
    table.insert(tokens,str)
  end
  if tokens[1] == "OUT.PRINT" then
    tokens[2] = extlib.check(tokens[2])
    print(tokens[2])
  end
  if tokens[1] == "OUT.FILE" then
    tokens[2] = extlib.check(tokens[2])
    tokens[3] = extlib.check(tokens[3])
    file = io.open(tokens[2], "w")
    io.output(file)
    io.write(tokens[3])
    io.close(file)
  end
  if tokens[1] == "OUT.VAR" then
    tokens[2] = extlib.check(tokens[2])
    tokens[3] = extlib.check(tokens[3])
    var[tokens[2]] = tokens[3]
  end
  if tokens[1] == "@IF.START" then
    nil
  end
  if tokens[1] == "@IF.END" then
    if iflib.evaluate(var["if"]) then
      nil
    end
  end
end
