defmodule ExMon do
  alias ExMon.Player

  def create_player(name, average_move, random_move, healing_move) do
    Player.build(name, random_move, average_move, healing_move)
  end
end
