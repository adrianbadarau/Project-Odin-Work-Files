def fibs(n)
  fib_arr=[0,1]
  if fib_arr.include?(n)
    return fib_arr
  else
    i = 2
    while i <= n do
      fib_arr[i] = fib_arr[i-2]+fib_arr[i-1]
      i += 1
    end
    return fib_arr
  end
end

def fibs_rec(n)
  return [0] if n == 0
  return [0,1] if n == 1
  fib_arr = fibs_rec(n-1)
  fib_arr << fib_arr[-1] + fib_arr[-2]
end

def merge_sort(arr)
  return arr if arr.length <= 1
  half = arr.length / 2
  merge(merge_sort(arr[0..half-1]), merge_sort(arr[half..-1]))
end

def merge(left, right)
  rez = []
  i,j = 0, 0
  while i < left.length and j < right.length do
    if left[i] < right[j]
      rez << left[i]
      i += 1
    else
      rez << right[i]
      j +=1
    end
  end
  rez.concat left[i..-1]
  rez.concat right[j..-1]
end

#print fibs(5)
#print fibs_rec(5)
#print merge_sort([2,100,4,2,22,0,55,-32,5,44])