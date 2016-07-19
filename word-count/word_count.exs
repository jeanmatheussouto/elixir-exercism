defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    words = String.split(sentence, " ")
    m = %{}
    f = fn (word) ->
      IO.puts "\n\n"
      # Map.put(m, String.to_atom(word), 1)
      IEx.pry
      IO.puts String.to_atom(word)
      IO.puts "\n\n"
    end
    Enum.each(words, f)

    IO.puts "MAP CONTENT: #{Map.keys(m)}"
  end
end
