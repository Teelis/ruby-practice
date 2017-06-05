a = [[4, 19], nil, [32, 41, [234, 0, 21, [54, 32]]], 65]
b = [234, 0, 21, [54, 32]]

def elements_count(array1, array2)
  elements = Hash.new(0)

  array1 << array2
  array1.compact!.flatten!
  array1.each { |key| elements[key] += 1 }

  elements.sort
end

elements_count(a, b).each { |key, value| puts "#{key} - #{value}" }
