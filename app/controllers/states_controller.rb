class StatesController < ApplicationController
  def index
    states = State.all
    render json: states.as_json
  end
end
