class ChangeUserableTypeInUser < ActiveRecord::Migration
  def change
    change_column :users, :userable_type, :string
  end
end
