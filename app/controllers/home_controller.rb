class HomeController < ApplicationController

  def index
    @offices = Office.all.order("name ASC")
  end


  def search
    @offices = Office.all.order("name ASC")
    text = params["text_search"]
    @employees = Employee.where("name ilike ? or surname ilike ?", "%#{text}%", "%#{text}%")
                 .order("surname ASC")
  end


end
