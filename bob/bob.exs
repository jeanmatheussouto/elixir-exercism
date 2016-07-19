defmodule Bob do
  def hey(input) do
    cond do
      String.ends_with?(input, "?") -> "Sure."
      String.match?(input, ~r/\p{Lu}{2,}/u) -> "Whoa, chill out!"
      String.strip(input) == "" -> "Fine. Be that way!"
      true -> "Whatever."
    end
  end
end
