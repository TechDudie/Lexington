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
    print(tokens[2])
  end
  if tokens[1] == "OUT.FILE" then
    file = io.open(tokens[2], "w")
    io.output(file)
    io.write(tokens[3])
    io.close(file)
  end
  if tokens[1] == "OUT.VAR" then
    var[tokens[2]] = tokens[3]
end
