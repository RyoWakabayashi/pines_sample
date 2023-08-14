defmodule PinesSampleWeb.Components.Icons.Info do
  @moduledoc """
  Info icon.

  # Example
  <PinesSampleWeb.Components.Icons.Info.render />
  """
  use Phoenix.Component

  attr :size, :string, default: "5"
  attr :translate, :string, default: ""

  @spec render(map) :: Phoenix.LiveView.Rendered.t()
  def render(assigns) do
    ~H"""
    <svg class={"w-#{@size} h-#{@size} #{@translate}"} xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" d="M11.25 11.25l.041-.02a.75.75 0 011.063.852l-.708 2.836a.75.75 0 001.063.853l.041-.021M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9-3.75h.008v.008H12V8.25z" />
    </svg>
    """
  end
end
