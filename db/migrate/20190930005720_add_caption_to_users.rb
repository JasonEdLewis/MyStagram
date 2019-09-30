class AddCaptionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :caption, :string
  end
end
