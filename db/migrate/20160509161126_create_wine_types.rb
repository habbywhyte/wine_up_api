class CreateWineTypes < ActiveRecord::Migration
  def change
    create_table :wine_types do |t|
      t.text :type
      t.text :graphic_url
      t.references :food, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
