class CreateWinetypes < ActiveRecord::Migration
  def change
    create_table :winetypes do |t|
      t.text :typeofwine
      t.text :graphic_url
      t.references :food, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
