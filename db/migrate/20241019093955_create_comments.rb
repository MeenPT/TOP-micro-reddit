class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :user, foreign_key: true
      t.belongs_to :post, foreign_key: true

      t.timestamps
    end
  end
end
