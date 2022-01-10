class StateAbbreviationsController < ApplicationController
  def index
    state_abbreviations = StateAbbreviation.all
    render json: state_abbreviations.as_json
  end

  def show
    state_abbreviations = StateAbbreviation.find_by(id: params[:id])
    render json: state_abbreviations.as_json    
  end
end
