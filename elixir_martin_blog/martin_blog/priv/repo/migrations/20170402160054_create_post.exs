defmodule MartinBlog.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :text
      add :content, :text
      add :introduction, :text
      add :pinned, :boolean, default: false, null: false
      add :created, :datetime
      add :updated, :datetime
      add :category_id, references(:categories, on_delete: :nothing)

      timestamps()
    end
    create index(:posts, [:category_id])

  end
end
