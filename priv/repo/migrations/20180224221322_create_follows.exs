defmodule Microblog.Repo.Migrations.CreateFollows do
  use Ecto.Migration

  def change do
    create table(:follows) do
      add :follow_id, references(:users, on_delete: :delete_all)
      add :followee_id, references(:users, on_delete: :delete_all)

      timestamps()
    end

    create index(:follows, [:follow_id])
    create index(:follows, [:followee_id])
  end
end
