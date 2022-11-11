defmodule GenStage.Producer do
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

  @doc """
  Can be invoked to dispact event to consumer when needed.
  """
  def dispact_events(args) when is_list(args) do
    GenStage.cast(__MODULE__, {:dispact_events, args})
  end

  ##########
  # Server #
  ##########

  def init(initial_state) do
    {:producer, initial_state}

    # Optional: you could configure the producer buffer size (default to 10_000)
    # {:producer, initial_state, buffer_size: 10_000}

    # Optional: you could configure the producer buffer keep to :first or :last (default to :last)
    # {:producer, initial_state, buffer_size: 10_000, buffer_keep: :last}
  end

  def handle_cast({:dispact_events, args}, state) do
    {:noreply, args, state}
  end

  @doc """
  Only invoked when consumer is requesting for a demand.
  """
  def handle_demand(demand, state) do
    events = []
    {:noreply, events, state}
  end
end
