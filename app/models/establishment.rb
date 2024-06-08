class Establishment < ApplicationRecord
  belongs_to :owner, class_name: 'AppUser'
  
  # Adicione os atributos de endereço
  attribute :address, :string
  attribute :city, :string
  attribute :state, :string
  attribute :zipcode, :string
end