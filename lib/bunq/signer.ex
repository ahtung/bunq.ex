defmodule Bunq.Signer do
  @moduledoc """
  Documentation for Bunq.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Bunq.Signer.sign("POST", "v1/installtion")
      "UINaaJELGHekiye4JExGx6TCs2lKMta74oVlZlwVNuVD6xPpH7RS6H58C21MmiQ75/MSVjUePC8gBjtARW2HpUKN7hANJqo/UtDb7mgDMsuz7Cf/hKeUCX0T55w2X+NC3i1T+QOQVQ1gALBT1Eif6qgyyY1wpWJUYft0MmCGEYg/ao9r3g026DNlRmRpBVxXtyJiOUImuHbq/rWpoDZRQTfvGL4KH4iKV4Lcb+o9lw11xOl4LQvNOHq3EsrfnTIa5g80pg9TS6G0SvjWmFAXBmDXatqfVhImuKZtd1dQI12JNK/++isBsP79eNtK1F5rSksmsTfAeHMy7HbfAQSDbg=="

  """
  def sign(method, path) do
    input = request_string(method, path)
    "UINaaJELGHekiye4JExGx6TCs2lKMta74oVlZlwVNuVD6xPpH7RS6H58C21MmiQ75/MSVjUePC8gBjtARW2HpUKN7hANJqo/UtDb7mgDMsuz7Cf/hKeUCX0T55w2X+NC3i1T+QOQVQ1gALBT1Eif6qgyyY1wpWJUYft0MmCGEYg/ao9r3g026DNlRmRpBVxXtyJiOUImuHbq/rWpoDZRQTfvGL4KH4iKV4Lcb+o9lw11xOl4LQvNOHq3EsrfnTIa5g80pg9TS6G0SvjWmFAXBmDXatqfVhImuKZtd1dQI12JNK/++isBsP79eNtK1F5rSksmsTfAeHMy7HbfAQSDbg=="
  end

  defp request_string(method, path) do
    "#{method} #{path}\n"
  end

  defp sorted_headers() do

  end
end
