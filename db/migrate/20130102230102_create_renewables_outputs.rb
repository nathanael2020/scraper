class CreateRenewablesOutputs < ActiveRecord::Migration
  def change
    create_table :renewables_outputs do |t|
      t.date :date
      t.integer :hour
      t.integer :geothermal
      t.integer :biomass
      t.integer :biogas
      t.integer :small_hydro
      t.integer :wind_total
      t.integer :solar_pv
      t.integer :solar_thermal

      t.timestamps
    end
  end
end
