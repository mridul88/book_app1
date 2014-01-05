class Person < ActiveRecord::Base
  attr_accessible :name, :constituency, :highest_degree, :image_path, :birth_place,:party_id,
      :sex, :birth_date, :no_criminal_case, :no_civil_case,
      :convicted_case, :accused_case, :resume, :details, :immovable_asset, :movable_asset, :liability
      
  belongs_to :party 
  
  @leaders_list 
  
end
