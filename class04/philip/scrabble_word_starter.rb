require 'pry'

class ScrabbleWord
  def initialize(word)
    @points = {
      'a' => 1,
      'b' => 3,
      'c' => 3,
      'd' => 2,
      'e' => 1,
      'f' => 4,
      'g' => 2,
      'h' => 4,
      'i' => 1,
      'j' => 8,
      'k' => 5,
      'l' => 1,
      'm' => 3,
      'n' => 1,
      'o' => 1,
      'p' => 3,
      'q' => 10,
      'r' => 1,
      's' => 1,
      't' => 1,
      'u' => 1,
      'v' => 4,
      'w' => 4,
      'x' => 8,
      'y' => 4,
      'z' => 10
    }

    # keep going...
  end

  # The Getter
  def word
    return @word.downcase
  end

  def word=(word)
    @word = word.downcase
  end

  def score
    letters = word.split("")
    scores = letters.map do |letter|
      @points[letter]
    end
    total = scores.reduce(0) do |sum, score|
      sum + score
    end
    return total
  end
  
  #Return total
  def multiplier_score(mult)
    return score * mult
  end
end


binding.pry