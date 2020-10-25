class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.string :title_url, null: false, index: { unique: true }
      t.text :iframe_url, null: false
      t.string :game_type, null: false

      t.timestamps
    end
  end
end
