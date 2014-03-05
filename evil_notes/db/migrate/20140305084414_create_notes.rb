class Note < ActiveRecord::Migration
  def change
    create_table(:notes) do |t|
      t.string :title, null: false 
      t.string :content, null: false
    end
  end
end
