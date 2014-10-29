class BrainfartsController < ApplicationController
  before_action :set_brainfart, only: [:show, :edit, :update, :destroy]

  # GET /brainfarts
  # GET /brainfarts.json
  def index
    @brainfarts = Brainfart.all
  end

  # GET /brainfarts/1
  # GET /brainfarts/1.json
  def show
  end

  # GET /brainfarts/new
  def new
    @brainfart = Brainfart.new
  end

  # GET /brainfarts/1/edit
  def edit
  end

  # POST /brainfarts
  # POST /brainfarts.json
  def create
    @brainfart = Brainfart.new(brainfart_params)

    respond_to do |format|
      if @brainfart.save
        format.html { redirect_to @brainfart, notice: 'Brainfart was successfully created.' }
        format.json { render :show, status: :created, location: @brainfart }
      else
        format.html { render :new }
        format.json { render json: @brainfart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brainfarts/1
  # PATCH/PUT /brainfarts/1.json
  def update
    respond_to do |format|
      if @brainfart.update(brainfart_params)
        format.html { redirect_to @brainfart, notice: 'Brainfart was successfully updated.' }
        format.json { render :show, status: :ok, location: @brainfart }
      else
        format.html { render :edit }
        format.json { render json: @brainfart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brainfarts/1
  # DELETE /brainfarts/1.json
  def destroy
    @brainfart.destroy
    respond_to do |format|
      format.html { redirect_to brainfarts_url, notice: 'Brainfart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brainfart
      @brainfart = Brainfart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brainfart_params
      params.require(:brainfart).permit(:content, :user_id)
    end
end
