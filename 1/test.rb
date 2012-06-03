while a = gets
    break if a.chomp.eql?("42")
    puts "#{a}"
end
