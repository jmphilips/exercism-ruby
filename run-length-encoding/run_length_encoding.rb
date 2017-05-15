
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

end
