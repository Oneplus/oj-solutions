n = Integer(gets.chomp)

n.times do
    x, y = gets.chomp.split

    x, y = Integer(x.reverse), Integer(y.reverse)
    z = x + y
    puts String(z).reverse.gsub(/^0+/, "")
end
