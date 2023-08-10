defmodule PinesSampleWeb.PageController do
  use PinesSampleWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    conn
    |> assign(:accordions, [
      %{
        title: "Accordion 1",
        message: "Message 1"
      },
      %{
        title: "Accordion 2",
        message: "Message 2"
      },
      %{
        title: "Accordion 3",
        message: "Message 3"
      }
    ])
    |> render(:home, layout: false)
  end
end
