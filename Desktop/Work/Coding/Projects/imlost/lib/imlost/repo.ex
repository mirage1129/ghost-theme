defmodule Imlost.Repo do
  use Ecto.Repo,
    otp_app: :imlost,
    adapter: Ecto.Adapters.Postgres
end
