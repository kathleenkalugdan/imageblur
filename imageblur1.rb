def image

image = Array.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])  
end 

def output_image
image.map { |x| puts x.join('')}
end

output_image