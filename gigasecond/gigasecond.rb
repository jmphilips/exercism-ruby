module Gigasecond
  def self.from(start)
    return Time.at(start.to_i + 1000000000).utc
  end
end