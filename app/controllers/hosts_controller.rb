class HostsController < ApplicationController
  def new
    @virus = Virus.find(params[:virus_id])
    @host = Host.new
  end

  def create
    @virus = Virus.find(params[:virus_id])
    @host = Host.new(host_params)
    @host.virus = @virus
    if @host.save
      redirect_to virus_path(@virus)
    else
      render :new
    end
  end

  def destroy
    @host = Host.find(params[:id])
    @host.destroy
    redirect_to virus_path(@host.virus)
  end

  private

  def host_params
    params.require(:host).permit(:name, :infected_on, :image_url)
  end
end
