def fact(n)
    if n == 0
        1
    else
        n * fact(n - 1)
    end
end

t = Integer(gets.chomp)

t.times do
    n = Integer(gets.chomp)
    puts "#{fact(n)}"
end
