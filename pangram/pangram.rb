module Pangram
  def self.pangram?(sentence)
    ('a'..'z').to_a.map { |char| sentence.split('').include?(char) }.include?(false) ? "#{sentence} is NOT a pangram." : "#{sentence} IS a pangram."
  end
end
