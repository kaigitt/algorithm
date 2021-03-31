arr = [4, 20, 6, 10, 2, 15, 60, 9, 25, 12]
number_of_elements = arr.count

def make_heap(arr, parent, end_element)
  temp = arr[parent]
  child = 0

  while parent < (end_element + 1) / 2
    left_child = (parent * 2) + 1
    right_child = left_child + 1

    if right_child <= end_element && arr[right_child] > arr[left_child]
      child = right_child
    else
      child = left_child
    end

    if temp >= arr[child]
      break
    end

    arr[parent] = arr[child]
    parent = child
  end

  arr[parent] = temp
end

def heap_sort(arr, number_of_elements)
  center = (number_of_elements - 1) / 2
  while center >= 0
    make_heap(arr, center, number_of_elements - 1)
    center += -1
  end

  end_element = number_of_elements - 1
  while end_element > 0
    arr[0], arr[end_element] = arr[end_element], arr[0]
    make_heap(arr, 0, end_element - 1)
    end_element += -1
  end
end