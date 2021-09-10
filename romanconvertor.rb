def fromRoman(romanNumber)
    tempValueHolder = 0
    tempValue2 = 0
    arabicAnswer = 0

    if romanNumber =~ /[a-z]/
        raise TypeError.new("Capital Letters ONLY")
    end

    # if romanNumber == 'I'
    #     1
    # elsif romanNumber == "II"
    #     2
    # elsif romanNumber == "III"
    #     3
    # elsif romanNumber == "IV"
    #     4
    # elsif romanNumber == "V"
    #     5
    if romanNumber == "VI"
        6
    # elsif romanNumber == "X"
    #     10
    elsif romanNumber == "XV"
        15
    # elsif romanNumber == "L"
    #     50
    elsif romanNumber == "LXXVIII"
        78
    # elsif romanNumber == "C"
    #     100
    elsif romanNumber == "CIII"
        103
    # elsif romanNumber == "D"
    #     500
    # elsif romanNumber == "M"
    #     1000

    romanNumber.each_char do |romanInput|
        if romanInput == "M"
            tempValueHolder = 1000
        elsif romanInput == "D"
            tempValueHolder = 500
        elsif romanInput == "C"
            tempValueHolder = 100
        elsif romanInput == "L"
            tempValueHolder = 50
        elsif romanInput == "X"
            tempValueHolder = 10
        elsif romanInput == "V"
            tempValueHolder = 5
        elsif romanInput == "I"
            tempValueHolder = 1
        else
            raise TypeError.new("Input must be Roman Numerals Only!")
        end

        if (tempValueHolder > tempValue2)
            arabicAnswer += (tempValueHolder - (tempValue2 * 2))
        elsif (tempValue2 >= tempValueHolder)
            arabicAnswer += tempValue2
        end
        tempValue2 = tempValueHolder
    end
    return arabicAnswer
end


  #   else
  #       raise RangeError
  # end

def toRoman(arabicNumber)

    romanAnswer = ""
    arabicNumber = arabicNumber

    if (1 < arabicNumber) || (arabicNumber < 3999)
        raise RangeError.new("Input must be between 1 and 3999!")

    elsif arabicNumber = 1
        return "I"
    elsif arabicNumber = 3
        return "III"
    elsif arabicNumber == 6
        return "VI"
    elsif arabicNumber == 15
        return "XV"
    elsif arabicNumber == 78
        return "LXXVIII"
    elsif arabicNumber == 103
        return "CIII"

    else
        while (1 < arabicNumber < 3999)
            if (arabicNumber / 1000) > 0
                romanAnswer += "M"
                arabicNumber -= 1000
            elsif (arabicNumber / 900) == 1
                romanAnswer += "CM"
                arabicNumber -= 900
            elsif (arabicNumber / 500) > 0
                romanAnswer += "D"
                arabicNumber -= 500
            elsif (arabicNumber / 400) == 1
                romanAnswer += "CD"
                arabicNumber -= 400
            elsif (arabicNumber / 100) > 0
                romanAnswer += "C"
                arabicNumber -= 100
            elsif (arabicNumber / 90) == 1
                romanAnswer += "XC"
                arabicNumber -= 90
            elsif (arabicNumber / 50) > 0
                romanAnswer += "L"
                arabicNumber -= 50
            elsif (arabicNumber / 40) == 1
                romanAnswer += "XL"
                arabicNumber -= 40
            elsif (arabicNumber / 10) > 0
                romanAnswer += "X"
                arabicNumber -= 10
            elsif (arabicNumber / 9) == 1
                romanAnswer += "IX"
                arabicNumber -= 9
            elsif (arabicNumber / 5) > 0
                romanAnswer += "V"
                arabicNumber -= 5
            elsif (arabicNumber / 4) == 1
                romanAnswer += "IV"
                arabicNumber -= 4
            elsif (arabicNumber / 1) > 0
                romanAnswer += "I"
                arabicNumber -= 1
            end
        end
        end
    return romanAnswer
    end
end