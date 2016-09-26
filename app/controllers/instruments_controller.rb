class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :update, :destroy]

  # GET /instruments
  # GET /instruments.json
  def index
    @instruments = Instrument.all

    render json: @instruments
  end

  # GET /instruments/1
  # GET /instruments/1.json
  def show
    render json: @instrument
  end

  # POST /instruments
  # POST /instruments.json
  def create
    @instrument = Instrument.new(instrument_params)

    if @instrument.save
      render json: @instrument, status: :created, location: @instrument
    else
      render json: @instrument.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /instruments/1
  # PATCH/PUT /instruments/1.json
  def update
    @instrument = Instrument.find(params[:id])

    if @instrument.update(instrument_params)
      head :no_content
    else
      render json: @instrument.errors, status: :unprocessable_entity
    end
  end

  # DELETE /instruments/1
  # DELETE /instruments/1.json
  def destroy
    @instrument.destroy

    head :no_content
  end

  private

    def set_instrument
      @instrument = Instrument.find(params[:id])
    end

    def instrument_params
      params.require(:instrument).permit(:name, :type)
    end
end
