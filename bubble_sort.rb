def bubble_sort(lst)
  begin
    i,swap = 0,0
    while i < lst.length - 1
      if lst[i+1] < lst[i]
        lst[i],lst[i+1] = lst[i+1],lst[i]
        swap +=1
      end
      i+=1
    end
  end while swap != 0

lst
end

def bubble_sort_by(list)
  begin
    i, swap = 0, 0
    while i < list.length - 1
      if yield(list[i], list[i + 1]) > 0
        list[i], list[i + 1] = list[i + 1], list[i]
        swap += 1
      end
      i += 1
    end
  end while swap != 0
  list
end

print bubble_sort([4,3,78,2,0,2])
x = ["hi","hello","hey"]
 bubble_sort_by(x) do |left,right|
   right.length - left.length
 end

print x