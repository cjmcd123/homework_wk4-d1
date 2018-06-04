class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def run()
    @hand1.downcase
    @hand2.downcase
    if (@hand1 == "rock" || @hand1 == "paper" || @hand1 == "scissors")
      if (@hand2 == "rock" || @hand2 == "paper" || @hand2 == "scissors")
        case
        when @hand1 == @hand2
          result = "Draw!"
        when @hand1 == "rock" && @hand2 == "scissors"
          result = "Player 1 wins with Rock!"
        when @hand1 == "scissors" && @hand2 == "paper"
          result = "Player 1 wins with Scissors!"
        when @hand1 == "paper" && @hand2 == "rock"
          result = "Player 1 wins with Paper!"
        when @hand1 == "scissors" && @hand2 == "rock"
          result = "Player 2 wins with Rock!"
        when @hand1 == "paper" && @hand2 == "scissors"
          result = "Player 2 wins with Scissors!"
        when @hand1 == "rock" && @hand2 == "paper"
          result = "Player 2 wins with Paper!"
        end
      else
        result = "Invalid input"
      end
      # binding.pry
    else
      result = "Invalid input"
    end
    return result
  end

end
