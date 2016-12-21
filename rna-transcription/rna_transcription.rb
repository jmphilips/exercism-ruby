module Complement 

  def self.of_dna dna_string
    if dna_checker(dna_string)
      return dna_string.split("").map { |cha| transfer_guide[cha] }.join
    else 
      return ''
    end
  end

  def self.transfer_guide
    {
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U"
    }
  end

  def self.dna_checker (dna_string)
    !dna_string.split("").map { |char| transfer_guide.keys.include?(char)}.include?(false)
  end

end

module BookKeeping
  VERSION = 4
end