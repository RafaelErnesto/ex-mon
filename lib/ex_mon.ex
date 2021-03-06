defmodule ExMon do
  alias ExMon.{Player, Game}
  alias ExMon.Game.{Status, Actions}
  @computer_name "Robot"

  def create_player(name, average_move, random_move, healing_move) do
    Player.build(name, random_move, average_move, healing_move)
  end

  def start_game(player) do
    create_player(@computer_name, :punch, :kick, :heal)
    |> Game.start(player)

    Status.print_round_message()
  end

  def make_move(move) do
    move
    |> Actions.fetch_move()
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.print_wrong_move_message(move)
  defp do_move({:ok, move}) do
    case move do
      :move_heal -> "cure"
      move -> Actions.attack(move)
    end
  end
end
