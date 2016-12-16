class ClippingsController < ApplicationController
  before_action :set_clipping, only: [:show, :edit, :update, :destroy]

  # GET /clippings
  # GET /clippings.json
  def index
    @clippings = Clipping.all
  end

  # GET /clippings/1
  # GET /clippings/1.json
  def show
  end

  # GET /clippings/new
  def new
    @clipping = Clipping.new
  end

  # GET /clippings/1/edit
  def edit
  end

  # POST /clippings
  # POST /clippings.json
  def create
    @clipping = Clipping.new(clipping_params)
    @clipping.user_id = current_user.id

    respond_to do |format|
      if @clipping.save
        format.html { redirect_to @clipping, notice: 'Clipping was successfully created.' }
        format.json { render :show, status: :created, location: @clipping }
      else
        format.html { render :new }
        format.json { render json: @clipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clippings/1
  # PATCH/PUT /clippings/1.json
  def update
    @clipping.user_id = current_user.id
    respond_to do |format|
      if @clipping.update(clipping_params)
        format.html { redirect_to @clipping, notice: 'Clipping was successfully updated.' }
        format.json { render :show, status: :ok, location: @clipping }
      else
        format.html { render :edit }
        format.json { render json: @clipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clippings/1
  # DELETE /clippings/1.json
  def destroy
    @clipping.destroy
    respond_to do |format|
      format.html { redirect_to clippings_url, notice: 'Clipping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clipping
      @clipping = Clipping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clipping_params
      params.require(:clipping).permit(:employ_id, :design_id, :lots, :status, :date, :user_id)
    end
end
