bf=gets.chomp.split.map{ |x| x.to_i }
puts (bf[0]%bf[2]==0?bf[0]/bf[2]:(bf[0]/bf[2]+1))*(bf[1]%bf[2]==0?bf[1]/bf[2]:(bf[1]/bf[2]+1))
