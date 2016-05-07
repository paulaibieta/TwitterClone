class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
