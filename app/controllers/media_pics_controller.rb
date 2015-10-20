class MediaPicsController < ApplicationController
  before_action :set_media_pic, only: [:show, :edit, :update, :destroy]
  before_filter :require_login, except: [:index]
  # GET /media_pics
  # GET /media_pics.json
  def index
    @media_pics = MediaPic.all
  end

  # GET /media_pics/1
  # GET /media_pics/1.json
  def show
  end

  # GET /media_pics/new
  def new
    @media_pic = MediaPic.new
  end

  # GET /media_pics/1/edit
  def edit
  end

  # POST /media_pics
  # POST /media_pics.json
  def create
    @media_pic = MediaPic.new(media_pic_params)

    respond_to do |format|
      if @media_pic.save
        format.html { redirect_to media_pics_url, notice: 'Media pic was successfully created.' }
        format.json { render :show, status: :created, location: @media_pic }
      else
        format.html { render :new }
        format.json { render json: @media_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_pics/1
  # PATCH/PUT /media_pics/1.json
  def update
    respond_to do |format|
      if @media_pic.update(media_pic_params)
        format.html { redirect_to media_pics_url, notice: 'Media pic was successfully updated.' }
        format.json { render :show, status: :ok, location: @media_pic }
      else
        format.html { render :edit }
        format.json { render json: @media_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_pics/1
  # DELETE /media_pics/1.json
  def destroy
    @media_pic.destroy
    respond_to do |format|
      format.html { redirect_to media_pics_url, notice: 'Media pic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_pic
      @media_pic = MediaPic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_pic_params
      params.require(:media_pic).permit(:title, :rank, :image)
    end
end
