class CreatePerritos < ActiveRecord::Migration[5.2]
  def change
    create_table :perritos do |t|
      t.string :nombre
      t.integer :edad
      t.string :descripcion
      t.string :raza
      t.string :color
      t.timestamps
    end
  end
end
