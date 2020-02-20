class HostSymptomsController < ApplicationController

  def new
    #  these are for the form
    @host = Host.find(params[:host_id])
    @host_symptom = HostSymptom.new
  end

  def create
    @host = Host.find(params[:host_id])
    @host_symptom = HostSymptom.new(host_symptom_params)
    @host_symptom.host = @host
    if @host_symptom.save
    else
      render :new
    end

    # If you want to create multiple... (also uncomment form)
    # @host = Host.find(params[:host_id])
    # @symptoms = Symptom.where(id: host_symptom_params[:symptom_id])
    # @symptoms.each do |symptom|
    #   HostSymptom.create(host: @host, symptom: symptom)
    # end
    # redirect_to virus_path(@host.virus)
  end

  private

  def host_symptom_params
    params.require(:host_symptom).permit(symptom_id: [])
  end
end
