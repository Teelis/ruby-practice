ip_list = File.new('IpToCountry.csv')
ip_to_array = ARGV[0].split('.')

def ip_encode(ip_to_array)
  ip_to_number = 0
  pow = 3
  ip_to_array.each do |element|
    ip_to_number += element.to_i * 256**pow
    pow -= 1
  end
  ip_to_number
end

ip_encoded = ip_encode(ip_to_array)

ip_list.each do |line|
  next if line[0] == '#'
  ip_params = line.tr('"', '').split(',')
  if ip_encoded > ip_params[0].to_i && ip_encoded < ip_params[1].to_i
    puts ip_params[4]
    break
  end
end

ip_list.close
