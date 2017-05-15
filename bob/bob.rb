require 'set'

class Bob

  def self.hey(heard)
    if (heard.split('').to_set.disjoint? ('a'..'z').to_a.to_set) && (heard.split('').last == '?')
      response = "Sure."
    # if heard.split('').to_set.disjoint? ('a'..'z').to_a.to_set

    # end
    elsif heard.gsub("\n", "").gsub("\t", "").split(" ").length == 0
      response = "Fine. Be that way!"
    elsif heard.upcase == heard && heard.split('').last == '?'
      response = "Whoa, chill out!"
    elsif  heard.split('').last == '?'
      response = 'Sure.'
    elsif heard.upcase == heard
      response = "Whoa, chill out!"
    else
      response = 'Whatever.'
    end
  end

  def is_silence?(string)
    string.split('').length == 0
  end
end