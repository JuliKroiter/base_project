class AddMetaToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :meta_title, :string
    add_column :portfolios, :meta_desc, :text
  end
end
