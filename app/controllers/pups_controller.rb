class PupsController < ApplicationController
  before_action :set_pup, only: [:show, :edit, :update, :destroy]

  # GET /pups
  # GET /pups.json
  def index
    @pups = Pup.all
  end

  # GET /pups/1
  # GET /pups/1.json
  def show
  end

  # GET /pups/new
  def new
    @pup = Pup.new
  end

  # GET /pups/1/edit
  def edit
  end

  # POST /pups
  # POST /pups.json
  def create
    @pup = Pup.new(pup_params)

      if @pup.save
         redirect_to @pup, notice: 'Pup was successfully created.' 
      else
        render action: 'new' 
    end
  end

  # PATCH/PUT /pups/1
  # PATCH/PUT /pups/1.json
  def update
   
      if @pup.update(pup_params)
         redirect_to @pup, notice: 'Pup was successfully updated.' 
      else
        render action: 'edit'   
    end
  end

  # DELETE /pups/1
  # DELETE /pups/1.json
  def destroy
    @pup.destroy
     redirect_to pups_url 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pup
      @pup = Pup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pup_params
      params.require(:pup).permit(:description, :date)
    end
end
