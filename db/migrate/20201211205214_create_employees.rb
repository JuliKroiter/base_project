class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.boolean :active
      t.string :image
      t.string :instagram
      t.string :vk
      t.string :youtube
      t.string :facebook

      t.timestamps
    end
  end
end
