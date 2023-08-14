defmodule PinesSampleWeb.Components.Breadcrumb do
  @moduledoc """
  Breadcrumb.

  # Example
  <PinesSampleWeb.Components.Breadcrumb.render links={links} />
  """
  use PinesSampleWeb, :live_component

  attr :links, :list

  def render(assigns) do
    assigns =
      assigns
      |> assign(:links_with_inedx, Enum.with_index(assigns.links))

    ~H"""
    <nav class="flex justify-between px-3.5 py-1 border border-neutral-200/60 rounded-md">
      <ol class="inline-flex items-center mb-3 space-x-1 text-xs text-neutral-500 [&_.active-breadcrumb]:text-neutral-600 [&_.active-breadcrumb]:font-medium sm:mb-0">
        <%= for {link, index} <- @links_with_inedx do %>
          <%= if index > 0 do %>
            <PinesSampleWeb.Components.Breadcrumb.Icon.render />
          <% end %>
          <li>
            <a href={link.href} class="inline-flex items-center py-1 font-normal hover:text-neutral-900 focus:outline-none">
              <%= link.text %>
            </a>
          </li>
        <% end %>
      </ol>
    </nav>
    """
  end
end

defmodule PinesSampleWeb.Components.Breadcrumb.Icon do
  @moduledoc """
  Breadcrumb icon.

  # Example
  <PinesSampleWeb.Components.Breadcrumb.Icon.render />
  """
  use Phoenix.Component

  def render(assigns) do
    ~H"""
    <svg class="w-5 h-5 text-gray-400/70" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
      <g fill="none" stroke="none">
        <path d="M10 8.013l4 4-4 4" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
      </g>
    </svg>
    """
  end
end
