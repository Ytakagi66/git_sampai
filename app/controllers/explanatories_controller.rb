class ExplanatoriesController < ApplicationController
  before_action :set_explanatory, only: [:show, :edit, :update, :destroy]

  # GET /explanatories
  def index
    @explanatories = Explanatory.all
  end

  # GET /explanatories/1
  def show
  end

  # GET /explanatories/new
  def new
    @explanatory = Explanatory.new
  end

  # GET /explanatories/1/edit
  def edit
  end

  # POST /explanatories
  def create
    @explanatory = Explanatory.new(explanatory_params)

    if @explanatory.save
      redirect_to @explanatory, notice: 'Explanatory was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /explanatories/1
  def update
    if @explanatory.update(explanatory_params)
      redirect_to @explanatory, notice: 'Explanatory was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /explanatories/1
  def destroy
    @explanatory.destroy
    redirect_to explanatories_url, notice: 'Explanatory was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_explanatory
      @explanatory = Explanatory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def explanatory_params
      params.fetch(:explanatory, {})
    end
end
