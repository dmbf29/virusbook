class ViriController < ApplicationController
  before_action :set_virus, only: [:show]
  # GET /viri/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_virus
    @virus = Virus.find(params[:id])
  end

    # Only allow a trusted parameter "white list" through.
    # def virus_params
    #   params.require(:virus).permit(:name, :banner_url)
    # end
end
