class AddNameToFriend < ActiveRecord::Migration
  def change
    add_column :friends, :name, :string, nullable: false, default: ''
  end
end
