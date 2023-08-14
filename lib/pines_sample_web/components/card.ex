defmodule PinesSampleWeb.Components.Card do
  @moduledoc """
  Card.

  # Example
  <PinesSampleWeb.Components.Card.render text="Click" />
  """
  use Phoenix.Component

  attr :img_src, :string, default: ""
  attr :title, :string
  attr :message, :string
  attr :button_text, :string, default: "Click"

  def render(assigns) do
    ~H"""
    <div class="rounded-lg overflow-hidden border border-neutral-200/60 bg-white text-neutral-700 shadow-sm w-[380px]">
      <div class="relative">
        <img src={@img_src} class="w-full h-auto" />
      </div>
      <div class="p-7">
        <h2 class="mb-2 text-lg font-bold leading-none tracking-tight">
          <%= @title %>
        </h2>
        <p class="mb-5 text-neutral-500">
          <%= @message %>
        </p>
        <button class="inline-flex items-center justify-center w-full h-10 px-4 py-2 text-sm font-medium text-white transition-colors rounded-md focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:opacity-50 disabled:pointer-events-none bg-neutral-950 hover:bg-neutral-950/90">
          <%= @button_text %>
        </button>
      </div>
    </div>
    """
  end
end
