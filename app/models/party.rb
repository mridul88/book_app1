class Party < ActiveRecord::Base
  attr_accessible :name, :short_form, :type, :president, :symbol_image_path, :no_mp, :details, :motto 
  
  has_many :people 
  
  @parties_list
end
