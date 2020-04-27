class TemplesController < ApplicationController
  before_action :set_temple, only: [:show, :edit, :update, :destroy, :index]
 
  # GET /temples
  # GET /temples.json
  def index
    @temples = Temple.all
  end

  # GET /temples/1
  # GET /temples/1.json
  def show
    @temple = Temple.find(params[:id])
  end

  # GET /temples/new
  def new
    @temple = Temple.new
  end

  # GET /temples/1/edit
  def edit
    @temple = Temple.find(params[:id])
  end

  # POST /temples
  # POST /temples.json
  def create
    @temple = Temple.new(temple_params)

    respond_to do |format|
      if @temple.save
        format.html { redirect_to @temple, notice: '新規登録が正常に完了しました' }
        format.json { render :show, status: :created, image: @temple }
      else
        format.html { render :new }
        format.json { render json: @temple.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temples/1
  # PATCH/PUT /temples/1.json
  def update
    @temple = temple.find(params[:id])
    respond_to do |format|
      if @temple.update(temple_params)
        format.html { redirect_to @temple, notice: '正常に更新が完了しました' }
        format.json { render :show, status: :ok, image: @temple }
      else
        format.html { render :edit }
        format.json { render json: @temple.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temples/1
  # DELETE /temples/1.json
  def destroy
    @temple.destroy
    respond_to do |format|
      format.html { redirect_to temples_url, notice: '削除されました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temple
      @temple = Temple.all
    end

    # Only allow a list of trusted parameters through.
    def temple_params
      params.require(:temple).permit(:name, :adress, :article, :url, :photo, :location, :user_id,:description, :image, :goshuin, :god)
    end
end