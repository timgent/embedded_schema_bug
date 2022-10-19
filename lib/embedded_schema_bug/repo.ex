defmodule EmbeddedSchemaBug.Repo do
  use Ecto.Repo,
    otp_app: :embedded_schema_bug,
    adapter: Ecto.Adapters.Postgres
end
