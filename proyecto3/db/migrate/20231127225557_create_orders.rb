class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.date :fecha
      t.integer :consecutivo
      t.string :avatar
      t.string :destino
      t.string :origen
      t.string :estado
      t.string :codigo_envio
      t.decimal :valor
      t.belongs_to :dispatch, null: false, foreign_key: true
      t.belongs_to :company, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
