
#bubble sort method
def bubble_sort(array)
  array_lenght = array.size
  return array if array_lenght <=1

  loop do
    swap = false
    (array_lenght-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swap =true
      end
    end

    break if not swap
  end
  array
end

array = [3,8,2,9,10,-3,11,1]
puts array.inspect
p bubble_sort(array)