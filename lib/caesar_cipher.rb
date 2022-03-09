# Pretty gross, can definitely be improved
def caesar(string, shift_amount)
    sign = shift_amount > 0 ? -1 : 1 # Need negative sign if shift is positive, and positive sign if shift is negative
    new_string = ''
    string.each_char do |char|
        lower = true
        if char.ord.between?(65, 90)
            lower = false
        end

        result = char.ord

        if char =~ /[A-Za-z]/
            result = char.ord + shift_amount
        end
        
        if (char =~ /[A-Za-z]/ && lower && !result.between?(97, 122))
            result += (26 * sign)
        elsif (char =~ /[A-Za-z]/ && !lower && !result.between?(65, 90))
            result += (26 * sign)
        end
        
        new_string += result.chr
    end
    new_string
end

result = caesar("What a string!", 5)
puts result
puts caesar(result, -5)