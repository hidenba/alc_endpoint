class CreateSensors < ActiveRecord::Migration[5.0]
  def change
    create_table :sensors do |t|
      t.string :client_id
      t.string :value
      t.string :description

      t.timestamps
    end
  end
end
