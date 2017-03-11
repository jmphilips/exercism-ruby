class Robot

  attr_accessor :name

  @@instances = []

  def initialize
    @name = make_name
  end

  def reset
    self.name = make_name
  end

  def make_letter
    ("A".."Z").to_a.sample
  end

  def make_number
    (0..9).to_a.map { |num| num.to_s }.sample
  end

  def make_name
   name = [
      make_letter,
      make_letter,
      make_number,
      make_number,
      make_number
    ].join("")

    if @@instances.include? name
      make_name
    else
      @@instances << name
      name
    end
  end

  def self.how_many
    @@instances.count
  end
end
