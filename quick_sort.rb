require 'pry'

def create_array
  (1..10000).to_a.shuffle
end

def quick_sort_parts(low, hi)
  if hi == low + 1
    if @random_array[hi] < @random_array[low]
      @random_array[hi], @random_array[low] =
      @random_array[low], @random_array[hi]
    end
    return ""
  elsif hi <= low
    return ""
  end

  pivot = (rand(hi - low) + low)
  total = low + 1
  swap_spot = low
  @random_array[pivot], @random_array[low] =
  @random_array[low], @random_array[pivot]
  (hi - low).times do
    if @random_array[total] > @random_array[low]
      total += 1
    else
      swap_spot += 1
      @random_array[total], @random_array[swap_spot] =
      @random_array[swap_spot], @random_array[total]
      total += 1
    end
  end
  @random_array[low], @random_array[swap_spot] =
  @random_array[swap_spot], @random_array[low]
  quick_sort_parts(swap_spot + 1, hi)
  quick_sort_parts(low, swap_spot - 1)
end

def quick_sort(array)
  @random_array = array
  x = Time.new
  quick_sort_parts(0, @random_array.count - 1)
  y = Time.new

  puts y - x
  if @random_array == @random_array.sort
    puts 'yay'
  end
end

quick_sort(create_array)
