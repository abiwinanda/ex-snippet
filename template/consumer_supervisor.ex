defmodule OTP.ConsumerSupervisor do
  use ConsumerSupervisor

  def start_link(_args) do
    ConsumerSupervisor.start_link(__MODULE__, :ok)
  end

  def init(:ok) do
    children = [
      %{
        id: Consumer,
        start: {Consumer, :start_link, []},
        restart: :transient
      }
    ]

    opts = [
      strategy: :one_for_one,
      subscribe_to: [
        # Optional: set max_demand to System.schedulers_online() to adjust
        # the concurrency limit according to your system resources
        {Producer, max_demand: 2}
      ]
    ]

    ConsumerSupervisor.init(children, opts)
  end
end
