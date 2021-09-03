# Optimized version of the bubble sort algorithm. The standard algorithm
# always runs in O(n^2) time even if the array is sorted. This one will
# stop running if it realizes that the array is already sorted.
def bubble_sort(arr : Array(U)) forall U
  n = arr.size

  n.times do |i|
    swapped = false

    (n - i - 1).times do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end

    break if !swapped
  end
end
