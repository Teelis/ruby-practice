numbers_top = ' _     _  _     _  _  _  _  _ '
numbers_middle = '| |  | _| _||_||_ |_   ||_||_|'
numbers_bottom = '|_|  ||_  _|  | _||_|  ||_| _|'

top = ''
middle = ''
bottom = ''

ARGV[0].each_char do |number|
  n = number.to_i * 3
  top << numbers_top[n..n + 2]
  middle << numbers_middle[n..n + 2]
  bottom << numbers_bottom[n..n + 2]
end

puts "#{top}\n#{middle}\n#{bottom}"
