class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :script_type
      t.string :text_direction
      t.string :region_code

      t.timestamps
    end
  end
end
