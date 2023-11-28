class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.integer :numero_factura
      t.string :mes_factura
      t.string :factura
      t.string :certificacion
      t.belongs_to :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
