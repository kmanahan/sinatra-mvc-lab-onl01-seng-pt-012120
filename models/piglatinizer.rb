class PigLatinizer 
  attr_reader :word
  def initialize(word)
    @word = word
  end 
 def pig_latin(word)
  prefix = word[0, %w(a e i o u).map{|vowel|
    "#{word}aeiou".index(vowel)}.min]
  "#{word[prefix.length..-1]}#{prefix}ay"
end
end 