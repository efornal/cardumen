class HomeController < ApplicationController

  def index
    @offices = Office.all.order("name ASC")
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

  def office_search
    @offices = Office.all.order("name ASC")

    @employees = Employee.where("office_id = ?", params['id']).order("surname ASC")


    render :partial => "home/search"
  end

  def autocomplete
    unless params.include?('text_search')
      respond_to do |format|
        format.js {render :json => ""}
      end
    end
    text = params["text_search"]
    @employees = Employee.where("name ilike ? or surname ilike ?", "#{text}%", "#{text}%")
                 .order("surname ASC")
    @employees =  @employees.as_json
    @employees =  @employees.to_json

    respond_to do |format|
      format.js {render :json => @employees}
    end
  end


end
