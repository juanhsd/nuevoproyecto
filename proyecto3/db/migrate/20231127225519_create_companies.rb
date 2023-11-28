class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :nit
      t.string :razon_social
      t.string :rut
      t.integer :users_count
      t.string :avatar

      t.timestamps
    end
  end
end
