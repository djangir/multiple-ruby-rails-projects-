class TweatsController < ApplicationController
  before_action :set_tweat, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authenticate_memberr, only: [:update, :destroy]

  # GET /tweats/new
  def new
    @tweat = current_user.tweats.new
  end

  # GET /tweats or /tweats.json
  def index
    @tweats = Tweat.all.order('updated_at DESC')
    @tweat = Tweat.new
  end

  # GET /tweats/1 or /tweats/1.json
  def show
  end

  # GET /tweats/1/edit
  def edit
  end

  # POST /tweats or /tweats.json
  def create
    @tweat = current_user.tweats.new(tweat_params)

    respond_to do |format|
      if @tweat.save
        format.html { redirect_to root_path, notice: "Tweat was successfully created." }
        format.json { render :show, status: :created, location: @tweat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tweat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweats/1 or /tweats/1.json
  def update
    respond_to do |format|
      if @tweat.update(tweat_params)
        format.html { redirect_to root_path, notice: "Tweat was successfully updated." }
        format.json { render :show, status: :ok, location: @tweat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tweat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweats/1 or /tweats/1.json
  def destroy
    @tweat.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: "Tweat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweat
      @tweat = Tweat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweat_params
      params.require(:tweat).permit(:title, :tweet)
    end
    def authenticate_memberr
       @tweatt = Tweat.find(params[:id]).user_id
      if current_user.id != @tweatt
        redirect_to root_path, notice: "Wrong User"
      end
    end
end
