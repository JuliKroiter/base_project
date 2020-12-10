class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.string :desc
      t.string :slug
      t.string :fa_icon
      t.string :fa_icon_color
      t.string :fa_icon_bg_color
      t.string :title
      t.text   :content
      t.string :meta_title
      t.text   :meta_desc
      t.boolean :active

      t.timestamps
    end
  end
end
