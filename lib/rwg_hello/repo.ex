defmodule RwgHello.Repo do
  use Ecto.Repo,
    otp_app: :rwg_hello,
    adapter: Ecto.Adapters.Postgres
end
