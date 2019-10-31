defmodule Time1.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :hours_worked, :integer, null: false
      add :date, :date, null: false
      add :note, :string, null: false
      add :user_id, references(:users, on_delete: :delete_all), null: false
      add :job_id, references(:jobs, on_delete: :delete_all), null: false

      timestamps()
    end

    create index(:tasks, [:user_id])
    create index(:tasks, [:job_id])
  end
end
