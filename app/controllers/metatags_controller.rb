class MetatagsController < ApplicationController
  before_action :set_metatag, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  # GET /metatags
  # GET /metatags.json
  def index
    @metatags = Metatag.all
  end

  # GET /metatags/1
  # GET /metatags/1.json
  def show
  end

  # GET /metatags/new
  def new
    @metatag = Metatag.new
  end

  # GET /metatags/1/edit
  def edit
  end

  # POST /metatags
  # POST /metatags.json
  def create
    @metatag = Metatag.new(metatag_params)

    respond_to do |format|
      if @metatag.save
        format.html { redirect_to metatags_url, notice: 'Metatag was successfully created.' }
        format.json { render :show, status: :created, location: @metatag }
      else
        format.html { render :new }
        format.json { render json: @metatag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metatags/1
  # PATCH/PUT /metatags/1.json
  def update
    respond_to do |format|
      if @metatag.update(metatag_params)
        format.html { redirect_to metatags_url, notice: 'Metatag was successfully updated.' }
        format.json { render :show, status: :ok, location: @metatag }
      else
        format.html { render :edit }
        format.json { render json: @metatag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metatags/1
  # DELETE /metatags/1.json
  def destroy
    @metatag.destroy
    respond_to do |format|
      format.html { redirect_to metatags_url, notice: 'Metatag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metatag
      @metatag = Metatag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metatag_params
      params.require(:metatag).permit(:pagetitle, :keywords, :description)
    end
end
