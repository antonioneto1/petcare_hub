class AddAddressToEstablishments < ActiveRecord::Migration[7.0]
  def change
    add_column :establishments, :streat, :string
    add_column :establishments, :city, :string
    add_column :establishments, :state, :string
    add_column :establishments, :zipcode, :string
    add_column :establishments, :country, :string
    add_column :establishments, :neighborhood, :string
  end
end
