defmodule Ana.GenServer do
  use GenServer

  ## Client API
  @name  :anana

  def start_link do
    GenServer.start_link(__MODULE__, :ok, name: @name)
  end

  @doc """
  njvfvnjkdf
  """
  @spec store(String) :: atom
  def store(word) do
    GenServer.cast(@name, {:put, word})
  end

  def list() do
      GenServer.call(@name, {:list})
  end
#
  def show_anagrams() do
  #  GenServer.call(@name, {:show})
    GenServer.call(@name, {:show}, :infinity)
  end

  ## Server Callbacks

  def init(:ok) do
    {:ok, []}
  end

  def handle_call({:list}, _from, words) do
    {:reply, words, words}
  end

  def handle_cast({:put, word}, words) do
    {:noreply, List.flatten([word|words])}
#    {:noreply, [word|words]}
  end


  def handle_call({:show}, _from, words) do
    anagrams = words
    |> Enum.map(&Anagram.anagrams/1)
    |> IO.inspect
    {:reply, anagrams, words}
  end

end
