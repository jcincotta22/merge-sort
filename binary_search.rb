require 'benchmark'

def binary_search(arr, value, low=0, high=arr.length-1)
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

def include?(arr, value)
  start = Time.now.to_f
  arr.each do |el|
    if el == value
      return true
    end
  end
  return false
end



a = []
n = 0
while n < 100_000_000
  a << n
  n+=1
end

binary_search(a, 999_000)
include?(a, 999_000)

puts binary = Benchmark.measure {
  binary_search(a, 999_999_000)
}
puts time2 = Benchmark.measure {
  include?(a, 999_999_000)
}
