defmodule ExMon.Player do
  @required_keys [:life, :name, :moves]
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(name, random_move, average_move, healing_move) do
    %ExMon.Player{
      name: name,
      moves: %{
        random_move: random_move,
        average_move: average_move,
        healing_move: healing_move,
      },
      life: @max_life
    }
  end
end
