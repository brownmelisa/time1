defmodule Time1.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :date, :date
    field :hours_worked, :integer
    field :note, :string
#    field :user_id, :id
    field :job_id, :id

    belongs_to :user, Time1.Users.User

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:user_id, :job_id, :hours_worked, :date, :note])
    |> validate_required([:user_id, :job_id, :hours_worked, :date, :note])
  end

end
