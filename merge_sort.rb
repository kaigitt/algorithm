arr = [4, 20, 6, 10, 2, 15, 60, 9, 25, 12]
number_of_elements = arr.count
buffer = []

def merge_sort(arr, left, right, buffer)
  if left < right
    center = (left + right) / 2
    first_r = 0
    first_l = 0
    right_cursor = left
    left_cursor = left

    merge_sort(arr, left, center, buffer)
    merge_sort(arr, center + 1, right, buffer)

    while right_cursor <= center
      buffer[first_r] = arr[right_cursor]
      first_r += 1
      right_cursor += 1
    end

    while right_cursor <= right && first_l < first_r
      if buffer[first_l] <= arr[right_cursor]
        arr[left_cursor] = buffer[first_l]
        left_cursor += 1
        first_l += 1
      else
        arr[left_cursor] = arr[right_cursor]
        left_cursor += 1
        right_cursor += 1
      end
    end

    while first_l < first_r
      arr[left_cursor] = buffer[first_l]
      left_cursor += 1
      first_l += 1
    end
  end
  return arr
end
