class TemplesController < ApplicationController
  before_action :set_temple, only: [:show, :edit, :update, :destroy]

  # GET /temples
  def index
    @temples = Temple.all
  end

  # GET /temples/1
  def show
  end

  # GET /temples/new
  def new
    @temple = Temple.new
  end

  # GET /temples/1/edit
  def edit
  end

  # POST /temples
  def create
    @temple = Temple.new(temple_params)

    if @temple.save
      redirect_to @temple, notice: 'Temple was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /temples/1
  def update
    if @temple.update(temple_params)
      redirect_to @temple, notice: 'Temple was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /temples/1
  def destroy
    @temple = Temple.find(params[:id])
    @temple.destroy
    redirect_to temples_url, notice: 'Temple was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temple
      @temple = Temple.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def temple_params
      params.require(:temple).permit(:title, :adress, :url, :article, :god, :goshuin, :image, :name)
    end
end
