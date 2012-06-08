n = Integer(gets.chomp)

n.times do
    exp = gets.chomp
    optr = []
    opnd = []
    ops = ["(", "+", "-", "*", "/", "^", ")"]
    exp.each_byte do |ch|
        ch = ch.chr

        if ch >= 'a' and ch <= 'z'
            opnd.push(ch)
        end

        if ch == '('
            optr.push(ch)
        end

        if ch == ')'
            while optr.last != '(' do
                opnd.push([opnd.pop, opnd.pop].reverse.join + optr.pop)
            end
            optr.pop
        end

        if ops.slice(1,5).include?(ch)
            while ops.index(ch)<=ops.index(optr.last) do
                opnd.push([opnd.pop, opnd.pop].reverse.join + optr.pop)
            end
            optr.push(ch)
        end
    end
    puts opnd
end
