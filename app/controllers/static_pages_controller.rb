class StaticPagesController < ApplicationController
  def home
  end

  def leaders
    @leaders_list = Person.pluck(:name)
    @leaders_list.sort_by!{|i| i[0]}
  end

  def parties
     @parties_list = Party.pluck(:short_form)
  end

  def places
  end
  
  def about
  end
end
