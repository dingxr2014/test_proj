class PunishesController < ApplicationController
  before_action :set_punish, only: [:show, :edit, :update, :destroy]

  # GET /punishes
  # GET /punishes.json
  def index
    @punishes = Punish.all
  end

  # GET /punishes/1
  # GET /punishes/1.json
  def show
  end

  # GET /punishes/new
  def new
    @punish = Punish.new
  end

  # GET /punishes/1/edit
  def edit
  end

  # POST /punishes
  # POST /punishes.json
  def create
    @punish = Punish.new(punish_params)

    respond_to do |format|
      if @punish.save
        format.html { redirect_to @punish, notice: 'Punish was successfully created.' }
        format.json { render :show, status: :created, location: @punish }
      else
        format.html { render :new }
        format.json { render json: @punish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /punishes/1
  # PATCH/PUT /punishes/1.json
  def update
    respond_to do |format|
      if @punish.update(punish_params)
        format.html { redirect_to @punish, notice: 'Punish was successfully updated.' }
        format.json { render :show, status: :ok, location: @punish }
      else
        format.html { render :edit }
        format.json { render json: @punish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punishes/1
  # DELETE /punishes/1.json
  def destroy
    @punish.destroy
    respond_to do |format|
      format.html { redirect_to punishes_url, notice: 'Punish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_punish
      @punish = Punish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def punish_params
      params.require(:punish).permit(:name, :faults, :fault_date, :status, :complete_date)
    end
end
