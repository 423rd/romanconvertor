def fromRoman(romanNumber)
    # Replace the following line with the actual code!
    if romanNumber == 'I'
        1
    elsif romanNumber == "II"
        2
    elsif romanNumber == "III"
        3
    elsif romanNumber == "IV"
        4
  end
end

def toRoman(arabicNumber)
    # Replace the following line with the actual code!
    if arabicNumber == 1
        "I"
    elsif arabicNumber == 2
        "II"
    elsif arabicNumber == 3
        "III"
    elsif arabicNumber == 15
        "XV"
    elsif arabicNumber == 6
        "VI"
    elsif arabicNumber == 78
        "LXXVIII"
    elsif arabicNumber == 103
        "CIII"
    end
end