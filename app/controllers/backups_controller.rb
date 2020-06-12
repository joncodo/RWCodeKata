class BackupsController < ApplicationController
  def index
    @backups = Backup.all
  end
  
  def create
    @backup = Backup.new(backup_params)

    @backup.save
    redirect_to @backup
  end

  # def purge
  #   Backup.delete
  # end

  # def search
  #   Backup.find
  # end

  def show
    @backup = Backup.find(params[:id])
  end

  private 
    # def download_backup
    
    # end

    def backup_params
      params.require(:backup).permit(:body)
    end
end
