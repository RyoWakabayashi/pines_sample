defmodule PinesSampleWeb.Components.Badge do
  @moduledoc """
  Badge.

  # Example
  <PinesSampleWeb.Components.Badge.render level={badge.level} text={badge.text} />
  """
  use PinesSampleWeb, :live_component

  @levels ~w(info success warning error)

  attr :level, :string
  attr :text, :string

  def render(assigns) do
    bg_color =
      case assigns.level do
        "info" -> "bg-blue-600"
        "success" -> "bg-green-500"
        "warning" -> "bg-yellow-500"
        "error" -> "bg-red-600"
        _ -> "white"
      end

    text_color =
      if assigns.level in @levels do
        "text-white"
      else
        "text-nuetral-900"
      end

    border_color =
      if assigns.level in @levels do
        "border-transparent"
      else
        "border-neutral-300"
      end

    assigns =
      assigns
      |> assign(:bg_color, bg_color)
      |> assign(:text_color, text_color)
      |> assign(:border_color, border_color)

    ~H"""
    <span class={"#{@bg_color} #{@text_color} border #{@border_color} relative flex items-center text-xs font-semibold pl-2 pr-2.5 py-1 rounded-full"}>
      <span><%= @text %></span>
    </span>
    """
  end
end
