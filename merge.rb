def merge_sort(a)

    if(a.length == 1)
        return a
    end

    a = a.each_slice((a.length/2.0).round).to_a
   
    a = a.map do |new_arr|
        merge_sort(new_arr)
    end

    x = 0
    y = 0
    c = []
    until(x == a[0].length && y == a[1].length)
    
        if(a[0][x] != nil && a[1][y] != nil && a[0][x] < a[1][y])
            c.push(a[0][x])
            x += 1
        elsif(a[0][x] != nil && a[1][y] != nil && a[0][x] > a[1][y])
            c.push(a[1][y])
            y += 1
        else
            if(a[0][x] == nil && a[1][y] != nil)
                c.push(a[1][y])
                y += 1  
            elsif(a[1][y] == nil && a[0][x] != nil)
                c.push(a[0][x])
                x += 1
            end
        end        
    end
    c.flatten
end

a = [5,37,8,12,9,17,234,7,235235,0,13]

p merge_sort(a)