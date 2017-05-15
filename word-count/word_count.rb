class Phrase

  def initialize(str)
    @str = single_quotes(str)
  end

  def word_hash(str)
    new_hash = {}
    ["!", "&", "@", "$", "%", "^", "&", ",", ":", "."].each do |punc|
        str = str.split(punc).join(' ')
    end
    str.split(' ').uniq.each { |wor| new_hash[wor.downcase] = 0}
    new_hash
  end

  def single_quotes(str)
    str.split(' ').map do |wor|
      wor = wor.split('')
      wor.shift if wor.first == "'"
      wor.pop   if wor.last  == "'"
      wor.join('')
    end.join(' ')
  end

  def word_count
    str = @str
    word_hash = word_hash(@str)
    word_hash.each do |k, v|
      ["!", "&", "@", "$", "%", "^", "&", ",", ":", "."].each do |punc|
        str = str.split(punc).join(' ')
      end
      word_hash[k] = str.split(' ').map { |wor| wor.downcase}.count(k)
    end
  end
  
end