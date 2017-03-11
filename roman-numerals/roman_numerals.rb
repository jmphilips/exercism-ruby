class Integer

  def get_largest
    10 ** (self.to_s.length - 1)
  end

  def letters
    {
     "M" => 1000,
     "CM" => 900,
     "D" => 500,
     "CD" => 400,
     "C" => 100,
     "XC" => 90,
     "L" => 50,
     "XL" => 40,
     "X" => 10,
     "IX" => 9,
     "V" => 5,
     "IV" => 4,
     "I" => 1,
    }
  end

  def to_roman
    num = self
    return_string = ""
    rem_num = 0
    previous_key = letters.first[0]
    letters.each do |k, v|
      rem_num = num % v
      return_string += (k * ((num - rem_num) / v))
      num = rem_num
    end
    return_string
  end

end