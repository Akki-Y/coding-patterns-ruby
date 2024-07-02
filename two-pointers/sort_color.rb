# Sort the array in place so that the elements of the same color are adjacent, with the colors 
# in the order of red, white, and blue?
# sort colors representing red-0 , white-1, blue-2


def sort_colors(colors)
  red = 0
  white = 0
  blue = colors.length - 1

  (0..colors.length - 1).each do|i|
    if colors[white] == 0
      colors[white], colors[red] = colors[red], colors[white]
      white += 1
      red += 1
    elsif colors[white] == 1
      white += 1
    else
      colors[white], colors[blue] = colors[blue], colors[white]
      blue -= 1
    end
  end
  return colors
end

colors = [1, 0, 2, 1, 0, 2]     
sort_colors(colors)
puts "Sorted colors: #{colors}"  # [0, 0, 1, 1, 2, 2]
