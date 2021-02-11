function evaluate(code)
  func = loadstring("return " .. code)
  data = func()
  return data
