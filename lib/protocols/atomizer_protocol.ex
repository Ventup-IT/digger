defprotocol Digger.Atomizer.Protocol do
  @moduledoc """
  Documentation for Digger.Atomizer Protocol
  """

  @fallback_to_any true

  alias Digger.Types

  @doc """
  Atomize the data type
  """

  @spec atomize(Types.data_type, Types.string) :: Types.valid_return_type
  def atomize(data_type, atomize)
end
