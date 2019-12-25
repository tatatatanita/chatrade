class CreateForumUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :forum_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :forum, null: false, foreign_key: true
      t.timestamps
    end
  end
end
