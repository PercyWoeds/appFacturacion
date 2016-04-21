class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :cliente
      t.date :fecha
      t.string :td
      t.string :serie
      t.string :numero
      t.string :moneda
      t.decimal :preciocigv
      t.decimal :preciosigv
      t.float :cant1
      t.float :cant2
      t.float :cantidad
      t.float :vventa
      t.float :igv
      t.float :importe
      t.string :guia
      t.string :ruc

      t.timestamps
    end
  end
end
