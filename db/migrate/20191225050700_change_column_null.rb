class ChangeColumnNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :forum_id, true
  end
end
