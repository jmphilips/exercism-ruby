class Year
  def self.leap?(year)
    return true if year % 400 == 0
    if year % 4 == 0 && year % 100 != 0
      true
    else
      false
    end
  end
end