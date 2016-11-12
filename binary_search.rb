require 'benchmark'

def binary_search(arr, value, low=0, high=arr.length-1)
    start = Time.now
    mid = (low + high) / 2
    if low > high
      return false
    end
    if value == arr[mid]
      return true, mid
    elsif arr[mid] > value
      high = mid - 1
    else
      low = mid + 1
    end
    binary_search(arr, value, low, high)
end

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 19]
def include?(arr, value)
  start = Time.now
  arr.each do |el|
    if el = value
      return true
    end
  end
end
binary_search(a, 15)
include?(a, 15)

binary = Benchmark.measure {
  binary_search(a, 15)
}
time2 = Benchmark.measure {
  include?(a, 15)
}

puts "binary time #{binary.real}"
puts "include time #{time2.real}"
