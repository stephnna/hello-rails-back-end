class Api::V1::GreetingsController < ApplicationController
  before_action :set_greeting, only: %i[ show ]

  # GET /greetings
  def index
    @greetings = Greeting.all

    render json: @greetings, only: [:message]
  end

  # GET /greetings/1
  def show
    render json: @greeting
  end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_greeting
      @greeting = Greeting.find(params[:id])
    end    
end
