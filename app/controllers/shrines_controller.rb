class ShrinesController < ApplicationController
  before_action :set_shrine, only: [:show, :edit, :update, :destroy, :index]
 
  # GET /shrines
  # GET /shrines.json
  def index
    @shrines = Shrine.all
  end

  # GET /shrines/1
  # GET /shrines/1.json
  def show
    @shrine = Shrine.find(params[:id])
  end

  # GET /shrines/new
  def new
    @shrine = Shrine.new
  end

  # GET /shrines/1/edit
  def edit
    @shrine = Shrine.find(params[:id])
  end

  # POST /shrines
  # POST /shrines.json
  def create
    @shrine = Shrine.new(shrine_params)

    respond_to do |format|
      if @shrine.save
        format.html { redirect_to @shrine, notice: '新規登録が正常に完了しました' }
        format.json { render :show, status: :created, image: @shrine }
      else
        format.html { render :new }
        format.json { render json: @shrine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shrines/1
  # PATCH/PUT /shrines/1.json
  def update
    @shrine = Shrine.find(params[:id])
    respond_to do |format|
      if @shrine.update(shrine_params)
        format.html { redirect_to @shrine, notice: '正常に更新が完了しました' }
        format.json { render :show, status: :ok, image: @shrine }
      else
        format.html { render :edit }
        format.json { render json: @shrine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shrines/1
  # DELETE /shrines/1.json
  def destroy
    @shrine = Shrine.find(params[:id])
    @shrine.destroy
    respond_to do |format|
      format.html { redirect_to shrines_url, notice: '削除されました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shrine
      @shrine = Shrine.all
    end

    # Only allow a list of trusted parameters through.
    def shrine_params
      params.require(:shrine).permit(:name, :adress, :article, :url, :photo, :location, :user_id,:description, :image, :goshuin, :god)
    end
end