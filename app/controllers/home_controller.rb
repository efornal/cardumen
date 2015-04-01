class HomeController < ApplicationController

  def index
    @offices = Office.all
  end


  def search
    text = params["text_search"]
    @employees = Employee.where("name ilike ? or surname ilike ?", "%#{text}%", "%#{text}%")
  end


end
