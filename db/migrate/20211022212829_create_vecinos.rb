class CreateVecinos < ActiveRecord::Migration[6.1]
  def change
    create_table :vecinos do |t|
      t.string :rut
      t.string :apellidop
      t.string :apellidom
      t.string :nombre
      t.string :tipo
      t.string :direccion
      t.date :nacimiento
      t.string :educacion
      t.string :idioma

      t.timestamps
    end
  end
end
