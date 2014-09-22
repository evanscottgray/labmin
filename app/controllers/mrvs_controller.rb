class MrvsController < ApplicationController
  before_action :set_mrv, only: [:show, :edit, :update, :destroy]

  # GET /mrvs
  # GET /mrvs.json
  def index
    @mrvs = Mrv.all
  end

  # GET /mrvs/1
  # GET /mrvs/1.json
  def show
  end

  # GET /mrvs/new
  def new
    @mrv = Mrv.new
  end

  # GET /mrvs/1/edit
  def edit
  end

  # POST /mrvs
  # POST /mrvs.json
  def create
    @mrv = Mrv.new(mrv_params)

    respond_to do |format|
      if @mrv.save
        format.html { redirect_to @mrv, notice: 'Mrv was successfully created.' }
        format.json { render :show, status: :created, location: @mrv }
      else
        format.html { render :new }
        format.json { render json: @mrv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mrvs/1
  # PATCH/PUT /mrvs/1.json
  def update
    respond_to do |format|
      if @mrv.update(mrv_params)
        format.html { redirect_to @mrv, notice: 'Mrv was successfully updated.' }
        format.json { render :show, status: :ok, location: @mrv }
      else
        format.html { render :edit }
        format.json { render json: @mrv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mrvs/1
  # DELETE /mrvs/1.json
  def destroy
    @mrv.destroy
    respond_to do |format|
      format.html { redirect_to mrvs_url, notice: 'Mrv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mrv
      @mrv = Mrv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mrv_params
      params.require(:mrv).permit(:name, :description, :credential_id, :ipv4_address_attributes => [:address])
    end
end
