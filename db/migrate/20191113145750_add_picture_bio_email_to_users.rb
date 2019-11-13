class AddPictureBioEmailToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :picture, :string
    add_column :users, :bio, :string
    add_column :users, :email, :string
  end
end
