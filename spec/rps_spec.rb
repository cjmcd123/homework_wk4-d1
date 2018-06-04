require ('minitest/autorun')
require ('minitest/rg')
require ('pry-byebug')
require_relative ('../models/rps')

class TestGame < Minitest::Test

  def test_win_p1_rock
    @game = Game.new("rock","scissors")
    assert_equal("Player 1 wins with Rock!", @game.run())
  end

  def test_win_p1_paper
    @game = Game.new("paper","rock")
    assert_equal("Player 1 wins with Paper!", @game.run())
  end

  def test_win_p1_scissors
    @game = Game.new("scissors","paper")
    assert_equal("Player 1 wins with Scissors!", @game.run())
  end

  def test_win_p2_rock
    @game = Game.new("scissors","rock")
    assert_equal("Player 2 wins with Rock!", @game.run())
  end

  def test_win_p2_paper
    @game = Game.new("rock","paper")
    assert_equal("Player 2 wins with Paper!", @game.run())
  end

  def test_win_p2_scissors
    @game = Game.new("paper","scissors")
    assert_equal("Player 2 wins with Scissors!", @game.run())
  end

  def test_draw
    @game = Game.new("rock","rock")
    assert_equal("Draw!", @game.run())
  end

  def test_not_option
    @game = Game.new("block","wrapper")
    assert_equal("Invalid input", @game.run())
  end
end
