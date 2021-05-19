defmodule Hellodd.Tweet do
  use Ecto.Schema

  @derive {Jason.Encoder, only: [:id, :text]}
  schema "tweets" do
    field :text, :string
  end

  def get_all() do
    Hellodd.Repo.all(Hellodd.Tweet)
  end

  def get(id) do
    Hellodd.Repo.get!(Hellodd.Tweet, id)
  end

  def update(id) do
    post = Hellodd.Repo.get!(Heloodd.Tweet, id)
    post = Ecto.Changeset.change post, text: "New text"
    # Hellodd.Repo.update(post)
    case Hellodd.Repo.update post do
      {:ok, struct}       -> :ok # Updated with success
      {:error, changeset} -> changeset # Something went wrong
    end
  end
end
