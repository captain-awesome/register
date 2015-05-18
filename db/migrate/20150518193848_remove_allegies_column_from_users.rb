class RemoveAllegiesColumnFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :allergies
  end
end
