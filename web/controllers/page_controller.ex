defmodule Kimia.PageController do
  use Kimia.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
