class AppUser < ApplicationRecord
  enum user_type: { owner: 'owner', employee: 'employee', client: 'client' }

  # Adicione os atributos de endereço
  attribute :address, :string
  attribute :city, :string
  attribute :state, :string
  attribute :zipcode, :string
end
