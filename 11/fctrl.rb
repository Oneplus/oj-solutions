n = Integer(gets.chomp)

n.times do
    x = Integer(gets.chomp)
    p5 = 5
    sum = 0
    until x < p5
        sum += x / p5
        p5 *= 5
    end
    puts "#{sum}"
end
