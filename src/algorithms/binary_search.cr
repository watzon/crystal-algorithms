def binary_search(arr : Array(U), value : U) forall U
  binary_search(arr, 0, arr.size - 1, value)
end

def binary_search(arr : Array(U), left : Int32, right : Int32, value : U) forall U
  if right >= left
    mid = left + (right - left) // 2

    return mid if arr[mid] == value

    if arr[mid] > value
      return binary_search(arr, left, mid - 1, value)
    end

    return binary_search(arr, mid + 1, right, value)
  end

  return nil
end
