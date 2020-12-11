class CreateFaqs < ActiveRecord::Migration[5.2]
  def change
    create_table :faqs do |t|
      t.text :question
      t.text :response
      t.boolean :active

      t.timestamps
    end
  end
end
