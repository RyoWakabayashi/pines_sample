defmodule PinesSampleWeb.Components.Icon do
  @moduledoc """
  Icon.

  # Example
  <PinesSampleWeb.Components.Icon.render shape="info" />
  """
  use PinesSampleWeb, :live_component

  attr :shape, :string
  attr :size, :string, default: "5"
  attr :translate, :string, default: ""

  def render(assigns) do
    case assigns.shape do
      "info" ->
        ~H"""
        <PinesSampleWeb.Components.Icons.Info.render size={@size} translate={@translate} />
        """
      "success" ->
        ~H"""
        <PinesSampleWeb.Components.Icons.Success.render size={@size} translate={@translate} />
        """
      "warning" ->
        ~H"""
        <PinesSampleWeb.Components.Icons.Warning.render size={@size} translate={@translate} />
        """
      "error" ->
        ~H"""
        <PinesSampleWeb.Components.Icons.Error.render size={@size} translate={@translate} />
        """
      "terminal" ->
        ~H"""
        <PinesSampleWeb.Components.Icons.Terminal.render size={@size} translate={@translate} />
        """
      _ ->
        ~H"""
        """
    end
  end
end
