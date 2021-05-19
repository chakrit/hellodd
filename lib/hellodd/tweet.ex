defmodule Hellodd.Tweet do
  use Ecto.Schema

  @derive {Jason.Encoder, only: [:id, :text]}
  schema "tweets" do
    field(:text, :string)
  end

  def get_all() do
    Hellodd.Repo.all(Hellodd.Tweet)
  end

  def get(id) do
    Hellodd.Repo.get!(Hellodd.Tweet, id)
  end

  def update(id) do
    case Hellodd.Repo.get(Hellodd.Tweet, id) do
      nil ->
        {:error, :not_found}

      tweet ->
        Ecto.Changeset.change(tweet, text: "New text")
        |> Hellodd.Repo.update()
    end
  end
end
