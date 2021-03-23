require 'pry'
def merge_sort(array)
  if array.length <= 1
    array
  else
    left_array = merge_sort(array[0..array.length / 2.floor - 1])
    right_array = merge_sort(array[array.length / 2.ceil..array.length - 1])
    merge_branches([], left_array, right_array)
  end
end

def merge_branches(result, l_arr, r_arr)
  if l_arr == []
    result + r_arr
  elsif r_arr == []
    result + l_arr
  elsif l_arr[0] > r_arr[0]
    merge_branches(result << r_arr[0], l_arr, r_arr.drop(1))
  else
    merge_branches(result << l_arr[0], l_arr.drop(1), r_arr)
  end
end
p merge_sort([2, 1, 3, 0, 5, 3, 4])
