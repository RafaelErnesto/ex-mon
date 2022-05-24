defmodule ExMon do
  alias ExMon.{Player, Game}
  @computer_name "Robot"

  def create_player(name, average_move, random_move, healing_move) do
    Player.build(name, random_move, average_move, healing_move)
  end

  def start_game(player) do
    create_player(@computer_name, :punch, :kick, :heal)
    |> Game.start(player)
  end
end
