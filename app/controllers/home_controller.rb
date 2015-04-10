class HomeController < ApplicationController

  def index
    @offices = Office.all.order("name ASC")
  end


  def search
    @offices = Office.all.order("name ASC")

    if params['id']
      @employees = Employee.where("office_id = ?", params['id']).order("surname ASC")
    else
      text = params["text_search"]
      @employees = Employee.where("name ilike ? or surname ilike ?", "%#{text}%", "%#{text}%")
                   .order("surname ASC")
    end

  end


end
