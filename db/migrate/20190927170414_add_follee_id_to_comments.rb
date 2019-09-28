class AddFolleeIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :followee_id, :integer
  end
end
