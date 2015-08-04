def create_array
  (1..1000).to_a.shuffle
end

def bubble_sort_iterative(array)
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
  if swaps == 0
    puts new_array
    return true
  end
end

shuffled_array = create_array
sorted = false
x = Time.new
until sorted
  sorted = bubble_sort_iterative(shuffled_array)
end
y = Time.new


puts y - x
