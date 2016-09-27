class UserInstrumentsController < ProtectedController
  before_action :set_user_instrument, only: [:show, :update, :destroy]

  # GET /user_instruments
  # GET /user_instruments.json
  def index
    # @user_instruments = UserInstrument.all
    @user_instruments = current_user.user_instruments

    render json: @user_instruments
  end

  # GET /user_instruments/1
  # GET /user_instruments/1.json
  def show
    render json: @user_instrument
  end

  # POST /user_instruments
  # POST /user_instruments.json
  def create
    # @user_instrument = UserInstrument.new(user_instrument_params)
    @user_instrument = current_user.user_instruments.build(user_instrument_params)

    if @user_instrument.save
      render json: @user_instrument, status: :created, location: @user_instrument
    else
      render json: @user_instrument.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_instruments/1
  # PATCH/PUT /user_instruments/1.json
  def update
    # @user_instrument = UserInstrument.find(params[:id])
    @user_instrument = current_user.find(params[:id])

    if @user_instrument.update(user_instrument_params)
      head :no_content
    else
      render json: @user_instrument.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_instruments/1
  # DELETE /user_instruments/1.json
  def destroy
    @user_instrument.destroy

    head :no_content
  end

  private

    def set_user_instrument
      # @user_instrument = UserInstrument.find(params[:id])
      @user_instrument = current_user.user_instruments.find(params[:id])
    end

    def user_instrument_params
      params.require(:user_instrument).permit(:instrument_id)
    end
end
