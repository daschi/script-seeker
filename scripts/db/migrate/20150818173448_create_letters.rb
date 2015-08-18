class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :name
      t.string :isolated
      t.string :initial
      t.string :medial
      t.string :final
      t.string :region_code
      t.string :sound_path
      t.references :language, index: true, foreign_key: true

      t.timestamps
    end
  end
end
