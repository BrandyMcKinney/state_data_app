class StatesController < ApplicationController
  require 'pry'

  def index
    states = State.all
    render json: states.as_json
  end
  def show
    state = State.find_by(id: params[:id])
    render json: state.as_json    
    binding.pry
  end
end
