class CreateAppUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :app_users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :user_type
      t.string :phone
      t.string :document

      t.timestamps
    end
  end
end
