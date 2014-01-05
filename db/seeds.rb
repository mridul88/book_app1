# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.delete_all
Party.delete_all
party_short_form = Array.new()
party = Party.new()

# File reading starts from here 
       
book = Spreadsheet.open("/home/mridul/Desktop/Ruby\ Scripts/ls-2009-data_revised.xls")
sheet1 = book.worksheet('Sheet1') # can use an index or worksheet name

#Initiliazing party table
sheet1.each do |row|
     party_short_form.push(row[3].to_str.downcase)
end
party_short_form = party_short_form.uniq
party_short_form.delete_at(0)
   
party_short_form.each do |short_form|
      Party.create!(:name=> nil, :short_form=>short_form, :type=>nil, :president=>nil, :symbol_image_path=>nil, :no_mp =>nil ,:details=>nil, :motto=>nil )
end


sheet1.each do |row|
  name = row[1].to_str.downcase
  constituency = row[2].to_str.downcase
  party_id = row[3].to_str.downcase
  no_criminal_case = row[4]
  convicted_case =  row[5].to_str.downcase
  accused_case = row[6].to_str.downcase
  highest_degree = row[9].to_str.downcase
  immovable_asset = row[10]
  movable_asset = row[11]
  liability = row[13]
  
  if(name  == "candidate")
      next
  end
  
# Add it to table
    Person.create!(:name=>name, :constituency=>constituency, :highest_degree=>highest_degree, :image_path=>nil, 
                  :birth_place=>nil, :sex=>nil, :birth_date=>nil,:party_id=>party_id,:no_criminal_case=>no_criminal_case, 
                  :no_civil_case=>nil, :convicted_case=>convicted_case, :accused_case=> accused_case, 
                  :resume=>nil, :details=>nil, :immovable_asset=>immovable_asset, :movable_asset=>movable_asset, 
                  :liability => liability )
end

   
=begin
  name = name.split(' ')
  first_name = name[0].to_str.downcase
  last_name = name[(name.length-1)].to_str.downcase
=end