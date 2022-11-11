defmodule ModuleName do
  @moduledoc """
  module doc
  """
  use GenServer, restart: :transient

  ##########
  # Client #
  ##########

  def start_link(args) do
    GenServer.start_link(__MODULE__, args, name: __MODULE__)
  end

  @doc """
  function doc
  """
  def call(args) do
    GenServer.call(__MODULE__, {:op_name, args})
  end

  @doc """
  function doc
  """
  def cast(args) do
    GenServer.call(__MODULE__, {:op_name, args})
  end

  ##########
  # Server #
  ##########

  def init(args) do
    {:ok, state}

    # Optional: execute handle_continue callback asynchronously after init
    # {:ok, state, {:continue, :setup}}
  end

  # Optional: handle work asynchronously after init
  # def handle_continue(:setup, state) do
  #   {:noreply, state}
  # end

  def handle_call({:op_name, args}, _from, state) do
    {:reply, args, state}
  end

  def handle_cast(:op_name, _from, state) do
    {:noreply, state}
  end

  # Optional: use registry to register genserver process
  # defp via(name), do: {:via, Registry, {YourRegistryModule, name}}
end
