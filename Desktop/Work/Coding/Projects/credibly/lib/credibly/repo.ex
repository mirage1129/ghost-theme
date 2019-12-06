defmodule Credibly.Repo do
  use Ecto.Repo,
    otp_app: :credibly,
    adapter: Ecto.Adapters.Postgres
end
