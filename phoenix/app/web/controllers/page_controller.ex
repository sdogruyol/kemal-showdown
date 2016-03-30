defmodule Benchmarker.PageController do
  use Benchmarker.Web, :controller

  def index(conn, %{"title" => title}) do
    render conn, "index.html", title: title, members: [
      %{name: "Serdar Dogruyol"},
      %{name: "Fatih Kadir Akin"},
      %{name: "Askin Gedik"},
      %{name: "Ary Borenszweig"}
    ]
  end
end
