class HostsController < ApplicationController
  def index
    @hosts = Host.all
  end

  def new
    @host = Host.new
  end

  def create
    Host.create(host_params)
  end

  def destroy
    host = Host.find(params[:id])
    host.destroy
  end

  private
  def host_params
    params.require(:host).permit(:first_name, :last_name, :email, :image_url, :password )
  end
end
