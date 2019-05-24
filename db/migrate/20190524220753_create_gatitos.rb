class CreateGatitos < ActiveRecord::Migration[5.2]
  def change
    create_table :gatitos do |t|
      t.string :nombre
      t.integer :edad
      t.integer :nivel_maldad
      t.string :raza
      t.string :comidad_favorita

      t.timestamps
    end
  end
end
