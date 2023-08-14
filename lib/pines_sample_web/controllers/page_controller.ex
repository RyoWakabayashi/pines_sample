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
    |> assign(:links, [
      %{
        href: "#",
        text: "Top"
      },
      %{
        href: "#",
        text: "Link 1"
      },
      %{
        href: "#",
        text: "Link 2"
      },
      %{
        href: "#",
        text: "Link 3"
      }
    ])
    |> assign(:buttons, [
      %{
        text: "Button 1",
        bg_color: "white",
      },
      %{
        text: "Button 2",
        bg_color: "black",
      },
      %{
        text: "Button 3",
        bg_color: "blue"
      },
      %{
        text: "Button 4",
        bg_color: "red"
      },
      %{
        text: "Button 5",
        bg_color: "green"
      },
      %{
        text: "Button 6",
        bg_color: "yellow"
      },
    ])
    |> render(:home, layout: false)
  end
end
