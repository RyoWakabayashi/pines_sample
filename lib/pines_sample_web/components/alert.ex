defmodule PinesSampleWeb.Components.Alert do
  use Phoenix.Component

  @levels ~w(info success warning error)

  attr :level, :string
  attr :title, :string
  attr :message, :string

  def render(assigns) do
    bg_color =
      case assigns.level do
        "info" -> "bg-blue-600"
        "success" -> "bg-green-600"
        "warning" -> "bg-yellow-600"
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

    assigns =
      assigns
      |> assign(:bg_color, bg_color)
      |> assign(:text_color, text_color)
      |> assign(:border_color, border_color)

    ~H"""
    <div class={"relative w-full rounded-lg border #{@border_color} #{@bg_color} p-4 [&>svg]:absolute [&>svg]:text-foreground [&>svg]:left-4 [&>svg]:top-4 [&>svg+div]:translate-y-[-3px] [&:has(svg)]:pl-11 #{@text_color}"}>
      <svg class="w-5 h-5 -translate-y-0.5" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" d="M11.25 11.25l.041-.02a.75.75 0 011.063.852l-.708 2.836a.75.75 0 001.063.853l.041-.021M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9-3.75h.008v.008H12V8.25z" /></svg>
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
