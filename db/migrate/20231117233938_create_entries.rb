class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :mood
      t.string :weather
      t.string :body
      t.string :image

      t.timestamps
    end
  end
end
