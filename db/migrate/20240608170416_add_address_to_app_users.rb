class AddAddressToAppUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :app_users, :streat, :string
    add_column :app_users, :city, :string
    add_column :app_users, :state, :string
    add_column :app_users, :zipcode, :string
    add_column :app_users, :country, :string
    add_column :app_users, :neighborhood, :string
  end
end
