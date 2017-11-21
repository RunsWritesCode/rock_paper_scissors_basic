class RockScissorsGame

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    if @hand1 == "rock" && @hand2 == "scissors"
       "rock blunts scissors"
    elsif @hand1 == "scissors" && @hand2 == "rock"
       "rock blunts scissors"
    elsif @hand1 == "rock" && @hand2 == "paper"
       "paper smothers rock"
    elsif @hand1 == "scissors" && @hand2 == "paper"
       "scissors cut paper"
    elsif @hand1 == "paper" && @hand2 == "rock"
       "paper smothers rock"
    elsif @hand1 == "paper" && @hand2 == "scissors"
       "scissors cut paper"
    else
       "it's a draw!"
    end
  end


end
