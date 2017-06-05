numbers = [5, 23, 42, 1, 92, 90, 44, 2, 45, 51, 27, 47]
n = numbers.length

def random_num(array)
  random_id = rand(array.length)
  array.delete_at(random_id)
end

n.times do
  puts random_num(numbers)
end
