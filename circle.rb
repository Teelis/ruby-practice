X0 = 60.597223
Y0 = 56.837992
R = 4.2

input_array = [
  [60.597223, 56.837992], [62.23456, 57.235235],
  [64.797226, 61.037992], [66.464564, 63.35353563]
]

def in_circle?(x, y)
  (x - X0)**2 + (y - Y0)**2 <= R**2
end

output_array = []

input_array.each do |x, y|
  output_array << [x, y] if in_circle?(x, y)
end

output_array.each do |x, y|
  puts "#{x}, #{y}"
end
