while true do
    wd = Integer(gets.chomp)
    if wd == 0
        break
    end

    line = gets.chomp
    ht = line.size/wd

    out = ""
    wd.times do |j|
        ht.times do |i|
            out += (i % 2 == 0 ? line[i*wd+j] : line[(i+1)*wd - j - 1]).chr
        end
    end
    puts "#{out}"
end
