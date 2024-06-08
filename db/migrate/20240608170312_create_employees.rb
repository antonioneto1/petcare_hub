class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.integer :establishment_id
      t.integer :app_user_id
      t.string :role

      t.timestamps
    end
  end
end
