class CreateTransportes < ActiveRecord::Migration
  def change
    create_table :transportes do |t|
      t.string :placa
      t.string :chassi
      t.string :cor

      t.timestamps
    end
  end
end
