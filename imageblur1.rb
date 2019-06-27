def image
# image = Array.new(4) {Array.new(4)}


image = Array.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])  
end 

# puts "-----------"
# puts image

# image.each {|x| p x.join(' ')}

def output_image
image.map { |x| puts x.join('')}
end

puts "=============="
output_image