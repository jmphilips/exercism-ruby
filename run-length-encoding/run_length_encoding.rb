
class RunLengthEncoding

  def self.encode(str)
    split_string = str.split('')
    blocked_array = [[split_string.shift]]

    while split_string.length > 0
      current_letter = split_string.shift
      if blocked_array[-1][-1] == current_letter
        blocked_array[-1] << current_letter
      else
        blocked_array << [current_letter]
      end
    end
    blocked_array.map do |arr|
      return_string = arr[0].to_s
      if arr.count > 1
        return_string = arr.count.to_s + return_string
      end
      return_string
    end.join('')
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
