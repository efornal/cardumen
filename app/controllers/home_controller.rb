require 'users'

class HomeController < ApplicationController

  def index
    @offices = Office.all.order("name ASC")
    @usuarios = Users.all
  end


  def search
    @offices = Office.all.order("name ASC")

    if params['id'].to_i > 0
      @employees = Employee.where("office_id = ?", params['id']).order("surname ASC")
    else
      if params["text_search"]
        text = params["text_search"]
        @employees = Employee.where("name ilike ? or surname ilike ?", "%#{text}%", "%#{text}%")
                     .order("surname ASC")
      else
        @employees = Employee.all.order("surname ASC")
      end
    end

  end


end
