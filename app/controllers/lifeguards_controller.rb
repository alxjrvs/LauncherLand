class LifeguardsController < ApplicationController
  before_action :set_lifeguard, only: [:show, :edit, :update, :destroy]

  # GET /lifeguards
  # GET /lifeguards.json
  def index
    @lifeguards = Lifeguard.all
  end

  # GET /lifeguards/1
  # GET /lifeguards/1.json
  def show
  end

  # GET /lifeguards/new
  def new
    @lifeguard = Lifeguard.new
  end

  # GET /lifeguards/1/edit
  def edit
  end

  # POST /lifeguards
  # POST /lifeguards.json
  def create
    @lifeguard = Lifeguard.new(lifeguard_params)

    respond_to do |format|
      if @lifeguard.save
        format.html { redirect_to @lifeguard, notice: 'Lifeguard was successfully created.' }
        format.json { render :show, status: :created, location: @lifeguard }
      else
        format.html { render :new }
        format.json { render json: @lifeguard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lifeguards/1
  # PATCH/PUT /lifeguards/1.json
  def update
    respond_to do |format|
      if @lifeguard.update(lifeguard_params)
        format.html { redirect_to @lifeguard, notice: 'Lifeguard was successfully updated.' }
        format.json { render :show, status: :ok, location: @lifeguard }
      else
        format.html { render :edit }
        format.json { render json: @lifeguard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifeguards/1
  # DELETE /lifeguards/1.json
  def destroy
    @lifeguard.destroy
    respond_to do |format|
      format.html { redirect_to lifeguards_url, notice: 'Lifeguard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lifeguard
      @lifeguard = Lifeguard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lifeguard_params
      params.require(:lifeguard).permit(:tan, :spf)
    end
end
