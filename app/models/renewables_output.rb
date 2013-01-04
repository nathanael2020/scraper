class RenewablesOutput < ActiveRecord::Base
  attr_accessible :biogas, :biomass, :date, :geothermal, :hour, :small_hydro, :solar_pv, :solar_thermal, :wind_total
  
end
