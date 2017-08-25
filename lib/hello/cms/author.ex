defmodule Hello.CMS.Author do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hello.CMS.Author


  schema "authors" do
    field :bio, :string
    field :genre, :string
    field :role, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Author{} = author, attrs) do
    author
    |> cast(attrs, [:bio, :role, :genre])
    |> validate_required([:bio, :role, :genre])
    |> unique_constraint(:user_id)
  end
end
