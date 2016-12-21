module Raindrops

  def self.convert num
    return_string = ""
    if (num % 3) == 0
      return_string += "Pling"
    end

    if (num % 5) == 0
      return_string += "Plang"
    end

    if (num % 7) == 0
      return_string += "Plong"
    end

    if return_string == "" 
      return_string = "#{num}"
    else
      return return_string
    end

    return_string
  end

end