class CreateQuanties < ActiveRecord::Migration[7.0]
  def change
    create_table :quanties do |t|

      t.timestamps
    end
  end
end
