function check(token,var)
  if token:sub(1,1) == "#" then
    return var[token:sub(2)]
  end
  if token:sub(1,1) == "$" then
    file = io.open(token:sub(2), "r")
    io.input(file)
    text = io.read()
    io.close()
    return text
  end
end
