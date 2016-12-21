module HelloWorld 
  def self.hello (input = nil) 
    if input == nil
      return "Hello, World!"
    else 
      return "Hello, #{input}!"
    end
  end
end