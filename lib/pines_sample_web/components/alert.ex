defmodule PinesSampleWeb.Components.Alert do
  @moduledoc """
  Alert.

  # Example
  <PinesSampleWeb.Components.Alert.render level={alert.level} title={alert.title} message={alert.message} />
  """
  use Phoenix.Component

  @levels ~w(info success warning error)

  attr :level, :string
  attr :icon, :string, default: ""
  attr :title, :string
  attr :message, :string

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
        ""
      end

    icon =
      if assigns.icon == "" do
        assigns.level
      else
        assigns.icon
      end

    icon_size =
      if assigns.level in @levels do
        "5"
      else
        "4"
      end

    icon_translate =
      if assigns.level in @levels do
        "-translate-y-0.5"
      else
        ""
      end

    assigns =
      assigns
      |> assign(:bg_color, bg_color)
      |> assign(:text_color, text_color)
      |> assign(:border_color, border_color)
      |> assign(:icon, icon)
      |> assign(:icon_size, icon_size)
      |> assign(:icon_translate, icon_translate)

    ~H"""
    <div class={"relative w-full rounded-lg border #{@border_color} #{@bg_color} p-4 [&>svg]:absolute [&>svg]:text-foreground [&>svg]:left-4 [&>svg]:top-4 [&>svg+div]:translate-y-[-3px] [&:has(svg)]:pl-11 #{@text_color}"}>
      <PinesSampleWeb.Components.Icon.render shape={@icon} size={@icon_size} translate={@icon_translate}/>
      <h5 class="mb-1 font-medium leading-none tracking-tight">
        <%= @title %>
      </h5>
      <div class="text-sm opacity-80">
        <%= @message %>
      </div>
    </div>
    """
  end
end
