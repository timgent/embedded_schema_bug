defmodule EmbeddedSchemaBug.OuterTest do
  alias EmbeddedSchemaBug.{Inner, Outer}

  use ExUnit.Case, async: true

  test "nested changes should be diffed correctly" do
    changeset =
      Outer.changeset(%Outer{name: "outer name", inner: %Inner{inner_name: "inner name"}}, %{
        name: "new outer name",
        inner: %{inner_name: "inner name"}
      })

    IO.inspect(changeset, label: "changeset")
    assert changeset.changes == %{name: "new outer name"}
  end
end
