class ShrinesController < ApplicationController
  before_action :set_shrine, only: [:show, :edit, :update, :destroy]

  # GET /shrines
  def index
    @shrines = Shrine.all
  end

  # GET /shrines/1
  def show
  end

  # GET /shrines/new
  def new
    @shrine = Shrine.new
  end

  # GET /shrines/1/edit
  def edit
  end

  # POST /shrines
  def create
    @shrine = Shrine.new(shrine_params)

    if @shrine.save
      redirect_to @shrine, notice: 'Shrine was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /shrines/1
  def update
    if @shrine.update(shrine_params)
      redirect_to @shrine, notice: 'Shrine was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /shrines/1
  def destroy
    @shrine.destroy
    redirect_to shrines_url, notice: 'Shrine was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shrine
      @shrine = Shrine.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shrine_params
      params.require(:shrine).permit(:image,:title, :adress, :url, :article, :god, :goshuin)
    end
end