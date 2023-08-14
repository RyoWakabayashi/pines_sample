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
    |> assign(:alerts, [
      %{
        level: "info",
        title: "Alert 1",
        message: "Message 1"
      },
      %{
        level: "success",
        title: "Alert 2",
        message: "Message 2"
      },
      %{
        level: "warning",
        title: "Alert 3",
        message: "Message 3"
      },
      %{
        level: "error",
        title: "Alert 4",
        message: "Message 4"
      },
      %{
        level: "none",
        icon: "terminal",
        title: "Alert 5",
        message: "Message 5"
      }
    ])
    |> assign(:badges, [
      %{
        level: "info",
        text: "Badge 1"
      },
      %{
        level: "success",
        text: "Badge 2"
      },
      %{
        level: "warning",
        text: "Badge 3"
      },
      %{
        level: "error",
        text: "Badge 4"
      },
      %{
        level: "none",
        text: "Badge 5"
      }
    ])
    |> render(:home, layout: false)
  end
end
