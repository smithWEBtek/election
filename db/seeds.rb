def load_voters
	csv_text = File.read(Rails.root.join('lib', 'voters.csv'))
	csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
	csv.each do |row|
		voter = Voter.new(
			first_name: row["first_name"],
			last_name: row["last_name"],
			email: row["email"],
			gender: row["gender"],
			party: row["party"],
			registered: row["registered"]
		)
		voter.save
		print '.'
	end
end
 
def truncate_database
	puts 'truncate_voters_table ------------------------------------'
	Voter.all.each{|v| v.delete}
	ActiveRecord::Base.connection.reset_pk_sequence!('voters')
end

def main
	truncate_database
	load_voters
end

main