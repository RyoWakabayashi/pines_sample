defmodule PinesSampleWeb.Components.Button do
  @moduledoc """
  Button.

  # Example
  <PinesSampleWeb.Components.Button.render text="Click" bg_color="blue" />
  """
  use Phoenix.Component

  attr :text, :string
  attr :bg_color, :string, default: "white"

  def render(assigns) do
    {bg_color, hover_bg_color, focus_ring_color, color} =
      case assigns.bg_color do
        "black" -> {"bg-neutral-950", "hover:bg-neutral-900", "focus:ring-neutral-900", "text-white"}
        "blue" -> {"bg-blue-600", "hover:bg-blue-700", "focus:ring-blue-700", "text-white"}
        "red" -> {"bg-red-600", "hover:bg-red-700", "focus:ring-red-700", "text-white"}
        "green" -> {"bg-green-600", "hover:bg-green-700", "focus:ring-green-700", "text-white"}
        "yellow" -> {"bg-yellow-500", "hover:bg-yellow-600", "focus:ring-yellow-600", "text-white"}
        _ -> {"bg-white", "hover:bg-neutral-100", "focus:ring-neutral-200/60", "text-neutral-500"}
      end

    assigns =
      assigns
      |> assign(:bg_color, bg_color)
      |> assign(:hover_bg_color, hover_bg_color)
      |> assign(:focus_ring_color, focus_ring_color)
      |> assign(:color, color)

    ~H"""
    <button type="button" class={"inline-flex items-center justify-center px-4 py-2 text-sm font-medium tracking-wide #{@color} transition-colors duration-200 #{@bg_color} rounded-md #{@hover_bg_color} focus:ring-2 focus:ring-offset-2 #{@focus_ring_color} focus:shadow-outline focus:outline-none"}>
      <%= @text %>
    </button>
    """
  end
end
