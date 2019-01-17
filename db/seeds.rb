require 'date'

def load_city_of_boston
	csv_text = File.read(Rails.root.join('lib', 'city_of_boston.csv'))
	csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
	csv.each do |row|
		 
		addr = Address.new(
			lat: row["LAT"],
			lng: row["LNG"],
			number: row["NUMBER"],
			street: row["STREET"],
			unit: row["UNIT"],
			city: row["CITY"],
			district: row["DISTRICT"],
			region: row["REGION"],
			zipcode: row["ZIPCODE"]
		)
		addr.save
		print '.'
	end
end
 
def truncate_database
	puts 'truncate_addresses_table ------------------------------------'
	Address.all.each{|a| a.delete}
	ActiveRecord::Base.connection.reset_pk_sequence!('addresses')
end

def main
	truncate_database
	load_city_of_boston
end

main