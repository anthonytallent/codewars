# The rgb function is incomplete. 
# Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. 
# Valid decimal values for RGB are 0 - 255. 
# Any values that fall out of that range must be rounded to the closest valid value.

# Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

# Examples (input --> output):
# 255, 255, 255 --> "FFFFFF"
# 255, 255, 300 --> "FFFFFF"
# 0, 0, 0       --> "000000"
# 148, 0, 211   --> "9400D3"

# My answer
def rgb(r, g, b)
  r = [[r, 0].max, 255].min
  g = [[g, 0].max, 255].min
  b = [[b, 0].max, 255].min

  result = "%02X%02X%02X" % [r, g, b]

  return result
end

# Top Rated Answer
def rgb(r, g, b)
  "%.2X%.2X%.2X" % [r,g,b].map{|i| [[i,255].min,0].max}
end