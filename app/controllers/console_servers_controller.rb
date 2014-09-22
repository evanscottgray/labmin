class ConsoleServersController < ApplicationController
  before_action :set_console_server, only: [:show, :edit, :update, :destroy]

  # GET /console_servers
  # GET /console_servers.json
  def index
    @console_servers = ConsoleServer.all
  end

  # GET /console_servers/1
  # GET /console_servers/1.json
  def show
  end

  # GET /console_servers/new
  def new
    @console_server = ConsoleServer.new
  end

  # GET /console_servers/1/edit
  def edit
  end

  # POST /console_servers
  # POST /console_servers.json
  def create
    @console_server = ConsoleServer.new(console_server_params)

    respond_to do |format|
      if @console_server.save
        format.html { redirect_to @console_server, notice: 'Console server was successfully created.' }
        format.json { render :show, status: :created, location: @console_server }
      else
        format.html { render :new }
        format.json { render json: @console_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /console_servers/1
  # PATCH/PUT /console_servers/1.json
  def update
    respond_to do |format|
      if @console_server.update(console_server_params)
        format.html { redirect_to @console_server, notice: 'Console server was successfully updated.' }
        format.json { render :show, status: :ok, location: @console_server }
      else
        format.html { render :edit }
        format.json { render json: @console_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /console_servers/1
  # DELETE /console_servers/1.json
  def destroy
    @console_server.destroy
    respond_to do |format|
      format.html { redirect_to console_servers_url, notice: 'Console server was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_console_server
      @console_server = ConsoleServer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def console_server_params
      params.require(:console_server).permit(:name, :description, :telnet_port_base, :ssh_port_base, :credential_id, :ipv4_address_attributes => [:address])
    end
end
