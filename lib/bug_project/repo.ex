defmodule BugProject.Repo do
  use Ecto.Repo,
    otp_app: :bug_project,
    adapter: Ecto.Adapters.Postgres
end
