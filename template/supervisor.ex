defmodule OTP.Supervisor do
  # See https://hexdocs.pm/elixir/Supervisor.html#module-restart-values-restart
  # for understanding the restart strategy
  use Supervisor, restart: :permanent

  def start_link(args) do
    Supervisor.start_link(__MODULE__, args)
  end

  def init(args) do
    children = [
      {Child, args}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html#module-supervisor-strategies-and-options
    # to understand the strategies and supported options
    opts = [strategy: :one_for_one, max_seconds: 30]
    Supervisor.init(children, opts)
  end
end
