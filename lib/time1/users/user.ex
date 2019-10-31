defmodule Time1.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :manager, :boolean, default: false
    field :name, :string
    field :password, :string

    has_many :tasks, Time1.Tasks.Task

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :manager, :password])
    |> validate_required([:name, :email, :manager, :password])
  end
end
