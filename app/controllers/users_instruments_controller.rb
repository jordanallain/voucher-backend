class UsersInstrumentsController < ApplicationController
  before_action :set_users_instrument, only: [:show, :update, :destroy]

  # GET /users_instruments
  # GET /users_instruments.json
  def index
    @users_instruments = UsersInstrument.all

    render json: @users_instruments
  end

  # GET /users_instruments/1
  # GET /users_instruments/1.json
  def show
    render json: @users_instrument
  end

  # POST /users_instruments
  # POST /users_instruments.json
  def create
    @users_instrument = UsersInstrument.new(users_instrument_params)

    if @users_instrument.save
      render json: @users_instrument, status: :created, location: @users_instrument
    else
      render json: @users_instrument.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users_instruments/1
  # PATCH/PUT /users_instruments/1.json
  def update
    @users_instrument = UsersInstrument.find(params[:id])

    if @users_instrument.update(users_instrument_params)
      head :no_content
    else
      render json: @users_instrument.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users_instruments/1
  # DELETE /users_instruments/1.json
  def destroy
    @users_instrument.destroy

    head :no_content
  end

  private

    def set_users_instrument
      @users_instrument = UsersInstrument.find(params[:id])
    end

    def users_instrument_params
      params.require(:users_instrument).permit(:user_id, :instrument_id)
    end
end
