defmodule GenStage.Consumer do
  @moduledoc """
  module doc
  """
  use GenStage

  ##########
  # Client #
  ##########

  def start_link(args) do
    GenStage.start_link(__MODULE__, args)
  end

  ##########
  # Server #
  ##########

  def init(initial_state) do
    sub_opts = [{Producer, min_demand: 0, max_demand: 10}]
    {:consumer, initial_state, subscribe_to: sub_opts}
  end

  def handle_events(events, _from, state) do
    # Process list of events

    # Enum.each(events, fn event ->
    #   process(event)
    # end)

    {:noreply, [], state}
  end
end
