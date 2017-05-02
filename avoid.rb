def avoidObstacles(arr)
    s = 0
    a = (2..arr.max).to_a
    b = a - arr

    b.each do |n|
        if arr.all? {|m| m % n != 0}
            s = n
            break
        end
    end
    s == 0 ? arr.max + 1 : s
end
