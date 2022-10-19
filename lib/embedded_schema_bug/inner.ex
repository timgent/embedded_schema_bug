defmodule EmbeddedSchemaBug.Inner do
  import Ecto.Changeset

  use Ecto.Schema

  embedded_schema do
    field :inner_name, :string
  end

  def changeset(inner, attrs) do
    inner
    |> cast(attrs, [:inner_name])
  end
end
