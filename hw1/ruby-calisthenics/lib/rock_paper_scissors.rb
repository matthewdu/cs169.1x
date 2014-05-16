class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless (/[RPS]/ === player1[1] && /[RPS]/ === player2[1])
    return player1 if player1[1] == player2[1]
    return player1 if (player1[1] == 'P' && player2[1] == 'R')
    return player1 if (player1[1] == 'R' && player2[1] == 'S')
    return player1 if (player1[1] == 'S' && player2[1] == 'P')
    return player2
  end

  def self.tournament_winner(tournament)
    begin 
      self.winner(tournament[0], tournament[1])
    rescue
      self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
    end
  end

end
