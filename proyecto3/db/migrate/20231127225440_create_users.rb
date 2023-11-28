class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :encrypted_password
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.belongs_to :company, null: false, foreign_key: true
      t.string :nombre
      t.string :apellido
      t.boolean :admin
      t.string :avatar
      t.string :token
      t.boolean :first_login

      t.timestamps
    end
  end
end
