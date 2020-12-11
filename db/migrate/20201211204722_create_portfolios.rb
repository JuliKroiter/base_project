class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :name
      t.text   :description
      t.text   :content
      t.string :slug
      t.boolean :active
      t.string :image
      t.belongs_to :portfolio_category, foreign_key: true

      t.timestamps
    end
  end
end
