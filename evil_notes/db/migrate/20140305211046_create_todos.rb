class CreateTodos  < ActiveRecord::Migration
  def change
    create_table(:todos) do |t|
      t.string :title, null: false
      t.string :content, null: false
    end
  end
end
