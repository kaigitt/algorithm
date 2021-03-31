arr = [4, 20, 6, 10, 15, 2, 60, 9, 25, 12]
number_of_elements = arr.count

def quick_sort(arr, left_end, right_end)
  left_point = left_end
  right_point = right_end
  pivot = arr[(left_point + right_point) / 2]

  while left_point <= right_point
    while arr[left_point] < pivot
      left_point += 1
    end
    while arr[right_point] > pivot
      right_point += -1
    end
    if (left_point <= right_point)
      arr[left_point], arr[right_point] = arr[right_point], arr[left_point]
      left_point += 1
      right_point += -1
    end
  end

  quick_sort(arr, left_end, right_point) if left_end < right_point
  quick_sort(arr, left_point, right_end) if left_point < right_end
end