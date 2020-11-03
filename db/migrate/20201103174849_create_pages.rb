class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string  :meta_title
      t.text    :meta_desc
      t.string  :slug
      t.string  :title
      t.text    :desc
      t.boolean :main

      t.timestamps
    end
  end
end
