class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :name
      t.text :description
      t.text :content
      t.boolean :active
      t.string :image

      t.timestamps
    end
  end
end
