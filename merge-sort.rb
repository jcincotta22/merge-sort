def mergesort(list)
  if list.size <= 1
    return list
  else
    mid   = list.size / 2
    left  = list[0, mid]
    right = list[mid, list.size]
    merge(mergesort(left), mergesort(right))
  end
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end
