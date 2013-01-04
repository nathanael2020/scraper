require 'open-uri'

namespace :scrape_output do
	task :new_task => :environment do
	
#		RenewablesOutput.create(hour: 20)
		
#		puts "Hello World"
	
for i in 0..30

d = Date.parse("December 1st 2012") + i

puts d.year 
	
y_str = d.year.to_s
m_str = d.month.to_s
d_str = d.day.to_s

if m_str.length == 1

	m_str = "0" + m_str
	
end

if d_str.length == 1

	d_str = "0" + d_str
	
end


url = "http://content.caiso.com/green/renewrpt/" + d.year.to_s + m_str + d_str + "_DailyRenewablesWatch.txt"

local_fname = "scraped_" + d.year.to_s + m_str + d_str + ".txt"

File.open(local_fname, "w"){|file| file.write(open(url).read)}

thefile = File.open(local_fname, "r")

thelines = thefile.readlines

thelines.each_with_index do |line, idx|

	if idx >= 2 && idx <= 25

	n = Array.new
	
	line.split("\t").each_with_index do |item, idx2|
		
		if item != ""
		
			n[idx2] = item.to_i
			
			puts "idx2 is "
			puts idx2
			puts n[idx2]
			puts n[idx2].class
	
		end
			
	end
	
	RenewablesOutput.create(date: d, hour: n[1].to_i, geothermal:n[3].to_i, biomass:n[5].to_i, biogas:n[7].to_i, small_hydro:n[9].to_i, wind_total:n[11].to_i, solar_pv:n[13].to_i, solar_thermal:n[15].to_i)	

	end
		
end
	
	end
	
end

end
