
require "pry-byebug"

def fibs(x)
    arr = [0,1]
    if(x > 2)
    (x-2).times {|num| arr[num+2] = arr[num] + arr[num+1]}
    elsif(x == 2)
        arr
    elsif(x == 1)
        [0]
    else
        return
    end
    arr    
end

def fibs_rec(x) 

    if(x == 0) 
        0
    elsif(x == 1)
        1
    elsif(x > 0)        
        fibs_rec(x-1) + fibs_rec(x-2)
    end    

end
  


#byebug
# p fibs(4)
 p fibs_rec(4)

# 0,1,1,2,3,5,8,13,21