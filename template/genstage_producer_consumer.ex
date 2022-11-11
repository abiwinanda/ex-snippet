defmodule GenStage.ProducerConsumer do
  @moduledoc """
  module doc
  """
  use GenStage

  ##########
  # Client #
  ##########

  def start_link(args) do
    GenStage.start_link(__MODULE__, args, name: __MODULE__)
  end

  ##########
  # Server #
  ##########

  def init(initial_state) do
    sub_opts = [{Producer, min_demand: 0, max_demand: 10}]
    {:producer_consumer, initial_state, subscribe_to: sub_opts}
  end

  def handle_events(events, _from, state) do
    # Process list of events
    # events = Enum.filter(events, &filter?/1)
    {:noreply, events, state}
  end
end
