defmodule GuessNum do
  def main(_) do
    answer = Enum.random(1..100)

    [_, try_count] = guess(answer, 1)

    IO.puts "You win! Answer: #{answer}, Try count: #{try_count}"
  end

  def read_user_answer do
    IO.gets("Enter number from 1 to 100: ") |>
      String.strip |>
      String.to_integer
  end

  def guess(answer, try_count) do
    user_answer = read_user_answer()

    cond do
      # too large
      user_answer > answer ->
        IO.puts "Number is to large"
        guess(answer, try_count + 1)

      # too small
      user_answer < answer ->
        IO.puts "Number is to small"
        guess(answer, try_count + 1)

      # correct answer
      true -> 
        [answer, try_count]
    end
  end
end
