def bubble_sort(array)
  #bubble sort uses an index of n - 1, for n being an array's length. below is just laziness
  n = array.length - 1
  return array if n == 0 # a single item array doesn't need sorting does it

  # bubble sort can go up to (n-1)^2 --hence the double loop
  n.times do |i|
    # make the inner loop ever smaller with that n-i
    (n-i).times do |j|
      if array[j] > array[j+1]
        # do the swap
        array[j], array[j+1] = array[j+1], array[j]
      end
    end
  end
  array
end


bubble_sort([4,3,78,2,0,2])
