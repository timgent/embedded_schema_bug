defmodule EmbeddedSchemaBug.Outer do
  use Ecto.Schema

  import Ecto.Changeset

  alias EmbeddedSchemaBug.Inner

  schema "outer" do
    field :name, :string
    embeds_one :inner, Inner

    timestamps(type: :utc_datetime_usec)
  end

  def changeset(outer, attrs) do
    outer
    |> cast(attrs, [:name])
    |> cast_embed(:inner)
  end
end
