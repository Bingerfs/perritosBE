class CreatePerritos < ActiveRecord::Migration[5.2]
  def change
    create_table :perritos do |t|
      t.string :name
      t.integer :edad

      t.timestamps
    end
  end
end
