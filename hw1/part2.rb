class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end


class String
    def valid_move?
        return self =~ /^(r|p|s)$/i
    end
end


class Rock
    def lose_vs?(move)
        return move.win_vs_rock?
    end

    def win_vs_rock?()
        return false
    end

    def win_vs_paper?()
        return false
    end

    def win_vs_scissors?()
        return true
    end
end

class Paper
    def lose_vs?(move)
        return move.win_vs_paper?
    end

    def win_vs_rock?()
        return true
    end

    def win_vs_paper?()
        return false
    end

    def win_vs_scissors?()
        return false
    end
end

class Scissors
    def lose_vs?(move)
        return move.win_vs_scissors?
    end

    def win_vs_rock?()
        return false
    end

    def win_vs_paper?()
        return true
    end

    def win_vs_scissors?()
        return false
    end
end

def get_move(letter)
    if letter.downcase == "r"; return Rock.new; end
    if letter.downcase == "p"; return Paper.new; end
    if letter.downcase == "s"; return Scissors.new; end
end


def rps_result(m1, m2)
    if get_move(m1[1]).lose_vs?(get_move(m2[1]))
        return m2
    else
        return m1
    end
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2

  game.each do |player|
    raise NoSuchStrategyError unless player[1].valid_move?
  end

  return rps_result(game[0], game[1])
end


def rps_tournament_winner(tournament)
    if tournament[0].is_a? Array and tournament[0][0].is_a? String
        return rps_game_winner(tournament)
    else
        return rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
    end
end

puts rps_game_winner([ ["Armando", "S"], ["Dave", "S"] ])
