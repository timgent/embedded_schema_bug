defmodule EmbeddedSchemaBugWeb.PageController do
  use EmbeddedSchemaBugWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
