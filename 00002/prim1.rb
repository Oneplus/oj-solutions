maxv=31630
flag=Array.new(maxv, true)

(2..maxv/2).each do |i|
    (i*2..maxv).step(i) do |j|
        flag[j] = false
    end
end

table=Array.new

(2..maxv).each do |i|
    if flag[i]
        table.push(i)
    end
end

n = Integer(gets.chomp)

n.times do |c|
    x, y = gets.chomp.split
    x, y = [2, Integer(x)].max, Integer(y)
    flag=Array.new(y-x+1, true)

    table.each do |p|
        if p > y
            break
        end
        low = [x/p*p, p*2].max
        (low..y).step(p) do |j|
            if j >= x
                flag[j-x] = false
            end
        end
    end
    (y-x+1).times do |f|
        if flag[f]
            puts f + x
        end
    end
    if c < n - 1
        puts
    end
end
