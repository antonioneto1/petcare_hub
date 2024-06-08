class CreateEstablishments < ActiveRecord::Migration[7.0]
  def change
    create_table :establishments do |t|
      t.string :name
      t.integer :owner_id
      t.string :phone
      t.string :document
      t.string :email
      
      t.timestamps
    end
  end
end
