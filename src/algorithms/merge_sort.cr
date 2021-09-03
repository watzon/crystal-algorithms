# Crystal implementation of the merge sort algorithm, which divides an array into 2
# halves and takes a divide and conquer approach. Time complexity of this algorithm
# isn't great, since it always splits the array regardless of size, sorts them
# individually (and not in parallel), and then takes linear time to merge them
# back together.
def merge_sort(arr : Array(U)) forall U
  if arr.size > 1
    mid = arr.size // 2
    l = arr[...mid]
    r = arr[mid...]

    merge_sort(l)
    merge_sort(r)

    i = j = k = 0

    while i < l.size && j < r.size
      if l[i] < r[j]
        arr[k] = l[i]
        i += 1
      else
        arr[k] = r[j]
        j += 1
      end
      k += 1
    end

    while i < l.size
      arr[k] = l[i]
      i += 1
      k += 1
    end

    while j < r.size
      arr[k] = r[j]
      j += 1
      k += 1
    end
  end
end
