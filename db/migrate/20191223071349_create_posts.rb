class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :text, null: false            
      t.text :image
      t.references :user, null: false, foreign_key: true
      t.references :forum, null: false, foreign_key: true
      t.timestamps
    end
  end
end
