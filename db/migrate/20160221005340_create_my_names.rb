class CreateMyNames < ActiveRecord::Migration
  def change
    create_table :my_names do |t|
      t.string :name
      t.string :color

      t.timestamps null: false
    end
  end
end
