class Image

def initialize (array)
  @image = array 
end


def output_image
@image.each do |row|
  puts row.join
end
end

def currentposition!
  currentposition = []
@image.each_with_index do |row,column| 
    row.each_with_index do |item, item_index|
      currentposition << [column, item_index]  if item == 1
    end
  end

    

currentposition.each do |place|

        if place[1]+1 <= @image[0].length - 1
          @image[place[0]][place[1]+1] = 1
        end

        if place[1]-1 >= 0
          @image[place[0]][place[1]-1] = 1
        end

        if place[0]-1 >= 0
          @image[place[0]-1][place[1]] = 1
        end

        if place[0]+1 <= @image.length - 1
          @image[place[0]+1][place[1]] = 1
        end

end
end
end

 
image = Image.new([
  [1, 0, 0, 0, 0],
  [0, 0, 0, 0, 1],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0]
])  


image.currentposition!
image.output_image
    






   
    



