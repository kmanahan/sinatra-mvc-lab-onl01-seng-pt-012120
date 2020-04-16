class PigLatinizer 
  attr_reader :word
  def initialize(word)
    @word = word
  end 
  
  def piglatinize(string)
    a = string.split(" ")
    b = a.map {|word| piglatinize_word(word)}
    b.join(" ")
end

end 