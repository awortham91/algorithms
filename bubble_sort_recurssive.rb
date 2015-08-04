def create_array
  (1..1000).to_a.shuffle
end
$x = Time.new
def bubble_sort_recurssive(array)
  new_array = array
  swaps = 0
  first_number_in_pair = 0
  (new_array.count - 1).times do
    if new_array[first_number_in_pair] < new_array[first_number_in_pair + 1]
      new_array[first_number_in_pair], new_array[first_number_in_pair + 1] =
      new_array[first_number_in_pair + 1], new_array[first_number_in_pair]
      swaps += 1
    end
    first_number_in_pair += 1
  end
  if swaps > 0
    bubble_sort_recurssive(new_array)
    return ""
  else
    puts new_array
    $y = Time.new
  end
end


bubble_sort_recurssive(create_array)

puts $y - $x
