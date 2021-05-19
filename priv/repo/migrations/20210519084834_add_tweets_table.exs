defmodule Hellodd.Repo.Migrations.AddTweetsTable do
  use Ecto.Migration

  def up do
    create table("tweets") do
      add :text, :text

      timestamps()
    end
  end

  def down do
    drop table("tweets")
  end
end
