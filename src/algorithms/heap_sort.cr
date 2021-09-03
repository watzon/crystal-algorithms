# Make a subtree into a heap of size `n` rooted at index `i`.
def make_heap(arr : Array(U), n : Int32, i : Int32) forall U
  largest = i # Initialize largest as root
  l = 2 * i + 1
  r = 2 * i + 2

  if l < n && arr[largest] < arr[l]
    largest = l
  end

  if r < n && arr[largest] < arr[r]
    largest = r
  end

  if largest != i
    arr[i], arr[largest] = arr[largest], arr[i]
    make_heap(arr, n, largest)
  end
end

def heap_sort(arr : Array(U)) forall U
  n = arr.size
  i = n // 2 - 1

  while i >= 0
    make_heap(arr, n, i)
    i -= 1
  end

  j = n - 1
  while j > 0
    arr[j], arr[0] = arr[0], arr[j]
    make_heap(arr, j, 0)
    j -= 1
  end
end
