defmodule PinesSampleWeb.Components.Icons.Terminal do
  @moduledoc """
  Terminal icon.

  # Example
  <PinesSampleWeb.Components.Icons.Terminal.render />
  """
  use Phoenix.Component

  attr :size, :string, default: "4"
  attr :translate, :string, default: ""

  @spec render(map) :: Phoenix.LiveView.Rendered.t()
  def render(assigns) do
    ~H"""
    <svg class={"w-#{@size} h-#{@size} #{@translate}"} xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
      <polyline points="4 17 10 11 4 5"></polyline>
      <line x1="12" x2="20" y1="19" y2="19"></line>
    </svg>
    """
  end
end
