require 'csv'

namespace :slurp do
  desc "TODO"
  task states: :environment do
    # csv_text = File.read(Rails.root.join("lib", "csvs", "state_data.csv"))
    # csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    # csv.each do |row|
    #   t = State.new
    #   t.state = row["state"]
    #   t.income = row["median_household_income"]
    #   t.unemployment = row["share_unemployed_seasonal"]
    #   t.metro_areas = row["share_population_in_metro_areas"]
    #   t.degree = row["share_population_with_high_school_degree"]
    #   t.save 
    #   puts "#{t.state} saved"
    # end
    # puts "There are now #{State.count} rows."
    
    csv_text = File.read(Rails.root.join("lib", "csvs", "abbreviations.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      puts row.to_hash
      t = State.find_by(state: "Michigan")
    #   t.state = row["state"]
    #   t.income = row["median_household_income"]
    #   t.unemployment = row["share_unemployed_seasonal"]
    #   t.metro_areas = row["share_population_in_metro_areas"]
    #   t.degree = row["share_population_with_high_school_degree"]
    #   t.save 
    #   puts "#{t.state} saved"
    end
    # puts "There are now #{State.count} rows."
  end

end
