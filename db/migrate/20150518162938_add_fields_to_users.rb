class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cc_number, :string
    add_column :users, :cc_expiration_month, :string
    add_column :users, :cc_expiration_year, :string
    add_column :users, :pets, :boolean
    add_column :users, :smoker, :boolean
    add_column :users, :parking, :boolean
    add_column :users, :outlet, :boolean
    add_column :users, :seating, :boolean
    add_column :users, :water, :boolean
    add_column :users, :allergies, :boolean
    add_column :users, :rug, :boolean
    add_column :users, :facebook, :string
    add_column :users, :linkedin, :string
    add_column :users, :user_type, :boolean
  end
end
