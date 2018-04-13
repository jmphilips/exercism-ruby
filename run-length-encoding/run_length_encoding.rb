module BookKeeping
  VERSION = 2
end

class RunLength
  attr_reader :char

  def initialize(char)
    @char = char
    @count = 1
  end

  def count
    @count
  end

  def increment!
    @count += 1
  end
end

class EncodedString
  def initialize(str = '')
    @encoded = str.to_s
  end

  def add_char(char)
    @encoded += char.to_s
    self
  end

  def to_s
    @encoded.to_s
  end
end

class RunLengthEncoding

  def self.encode(str)
    split_string = str.chars
    @list_of_run_lengths = []
    @list_of_run_lengths << RunLength.new(split_string.shift)

    split_string.reduce(@list_of_run_lengths) do |list_of_run_lengths, current_letter|
      encode_new_letter(list_of_run_lengths, current_letter)
    end

    @list_of_run_lengths.reduce(EncodedString.new) do |encoded, run_length|
      blocked_char = run_length.char
      encoded.add_char(run_length.count) if run_length.count > 1
      encoded.add_char(blocked_char)
    end.to_s
  end

  def self.encode_new_letter(list_of_run_lengths, char)
    current_run_length = list_of_run_lengths.last
    if current_run_length.char == char
      current_run_length.increment!
    else
      list_of_run_lengths << RunLength.new(char)
    end
    list_of_run_lengths
  end

  def self.decode(str)
    split_string = str.split(/(\d+)/).keep_if { |s| s != "" }
    arr_to_use = []
    split_string.each do |s|
      if s.to_i != 0
        arr_to_use << s
      else
        s.split('').each { |char| arr_to_use << char }
      end
    end
    final_string = ""
    current_letter = arr_to_use.shift
    while arr_to_use.length > 0
      if /(\d+)/.match(current_letter)
        next_letter = arr_to_use.shift
        final_string << next_letter * current_letter.to_i
      else
        final_string << current_letter
      end
      current_letter = arr_to_use.shift
      final_string << current_letter if arr_to_use.length == 0 && current_letter
    end
    final_string
  end

end
