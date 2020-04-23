class CreateTools < ActiveRecord::Migration[6.0]
  def change
    create_table :tools do |t|
      t.string :tool_type
      t.string :constructive_type
      t.string :tool_material
      t.string :working_area
      t.integer :price


      t.timestamps
    end
  end
end
