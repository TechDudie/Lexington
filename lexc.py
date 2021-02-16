import sys
code = open(sys.argv[1]).read()
opts = open("lexc.opts").read()
opts = opts.split("\n")
i = 0
for pair in opts:
  opts[i] = pair.split(" ")
  i += 1
for i in opts:
  i[0] = i[0].replace("~"," ")
  i[1] = i[1].replace("~"," ")
  code = code.replace(i[0],i[1])
file = open(sys.argv[2],"w+")
file.write(code)
file.close()
