defmodule Bunq.Headers do
  def filter(headers) do
    headers
    |> Enum.filter(fn header ->
      header_name = elem(header, 0)
      "Cache-Control" == header_name || "User-Agent" == header_name || header_name |> String.starts_with?("X-Bunq-")
    end)
  end

  def sort(headers) do
    headers
    |> Enum.sort_by(fn header -> elem(header, 0) end)
    |> Enum.map(fn header -> "#{elem(header, 0)}: #{elem(header, 1)}" end)
    |> Enum.join("\n")
  end
end
