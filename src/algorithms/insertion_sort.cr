# Crystal implementation of the insertion sort algorithm. This algorithm
# always has a time complexity of O(n^2) so it's certainly not the most
# efficient, but it is super easy to implement.
def insertion_sort(arr : Array(U)) forall U
  (1...arr.size).each do |i|
    key = arr[i]
    j = i - 1

    while j >= 0 && key < arr[j]
      arr[j + 1] = arr[j]
      j -= 1
    end

    arr[j + 1] = key
  end
end
